#!/usr/bin/env ruby
# frozen_string_literal: true

require 'rexml/document'
require 'yaml'
require 'fileutils'
require 'date'

POSTS_XML_PATH = 'old/export-posts.xml'
ATTACHMENTS_XML_PATH = 'old/export-attachment.xml'
OUT_DIR = '_posts'
IMAGES_DIR = 'assets/images/posts'
PLACEHOLDER = '/assets/images/posts/post-placeholder.svg'

FileUtils.mkdir_p(OUT_DIR)
FileUtils.mkdir_p(IMAGES_DIR)

placeholder_path = File.join(IMAGES_DIR, 'post-placeholder.svg')
unless File.exist?(placeholder_path)
  File.write(placeholder_path, <<~SVG)
    <svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630" role="img" aria-label="Imagem de destaque do post">
      <rect width="1200" height="630" fill="#f4f5f7"/>
      <rect x="36" y="36" width="1128" height="558" rx="20" fill="#ffffff" stroke="#e4e4e4"/>
      <circle cx="120" cy="120" r="28" fill="#c8102e"/>
      <rect x="170" y="98" width="520" height="20" rx="10" fill="#c8102e" opacity="0.9"/>
      <rect x="170" y="132" width="380" height="16" rx="8" fill="#666666" opacity="0.5"/>
      <rect x="80" y="220" width="1040" height="12" rx="6" fill="#e4e4e4"/>
      <rect x="80" y="252" width="980" height="12" rx="6" fill="#e4e4e4"/>
      <rect x="80" y="284" width="930" height="12" rx="6" fill="#e4e4e4"/>
      <rect x="80" y="316" width="990" height="12" rx="6" fill="#e4e4e4"/>
      <rect x="80" y="348" width="900" height="12" rx="6" fill="#e4e4e4"/>
      <text x="80" y="420" font-family="Arial, Helvetica, sans-serif" font-size="28" fill="#666666">Imagem por definir</text>
      <text x="80" y="460" font-family="Arial, Helvetica, sans-serif" font-size="20" fill="#999999">Substitua em assets/images/posts/ e atualize o campo image no post</text>
    </svg>
  SVG
end

def clean_xml(path)
  content = File.read(path)
  idx = content.index('<?xml')
  idx ? content[idx..] : content
end

posts_doc = REXML::Document.new(clean_xml(POSTS_XML_PATH))
attachments_doc = REXML::Document.new(clean_xml(ATTACHMENTS_XML_PATH))

authors = {}
REXML::XPath.each(posts_doc, '//channel/wp:author', { 'wp' => 'http://wordpress.org/export/1.2/' }) do |a|
  login = a.elements['wp:author_login']&.text.to_s
  display = a.elements['wp:author_display_name']&.text.to_s
  authors[login] = display unless login.empty?
end

attachment_url_by_id = {}
REXML::XPath.each(attachments_doc, '//channel/item') do |item|
  next unless item.elements['wp:post_type']&.text.to_s == 'attachment'

  id = item.elements['wp:post_id']&.text.to_s
  url = item.elements['wp:attachment_url']&.text.to_s
  attachment_url_by_id[id] = url unless id.empty? || url.empty?
end

slug_counts = Hash.new(0)
created = 0
updated = 0

REXML::XPath.each(posts_doc, '//channel/item') do |item|
  next unless item.elements['wp:post_type']&.text.to_s == 'post'

  status = item.elements['wp:status']&.text.to_s
  title = item.elements['title']&.text.to_s.strip
  slug = item.elements['wp:post_name']&.text.to_s.strip
  slug = 'sem-slug' if slug.empty?

  post_date = item.elements['wp:post_date']&.text.to_s
  modified = item.elements['wp:post_modified']&.text.to_s

  begin
    date_obj = DateTime.parse(post_date)
  rescue StandardError
    next
  end

  content = item.elements['content:encoded']&.text.to_s
  excerpt = item.elements['excerpt:encoded']&.text.to_s
  author_login = item.elements['dc:creator']&.text.to_s
  author_display = authors[author_login] || author_login
  post_id = item.elements['wp:post_id']&.text.to_s
  original_link = item.elements['link']&.text.to_s

  tags = []
  categories = []
  item.elements.each('category') do |cat|
    domain = cat.attributes['domain'].to_s
    text = cat.text.to_s.strip
    next if text.empty?

    tags << text if domain == 'post_tag'
    categories << text if domain == 'category'
  end

  thumbnail_id = nil
  item.elements.each('wp:postmeta') do |meta|
    key = meta.elements['wp:meta_key']&.text.to_s
    value = meta.elements['wp:meta_value']&.text.to_s
    if key == '_thumbnail_id'
      thumbnail_id = value
      break
    end
  end

  image_url = attachment_url_by_id[thumbnail_id.to_s]
  image_url = PLACEHOLDER if image_url.to_s.empty?

  # Avoid closing front matter accidentally if literal --- appears alone in content.
  content = content.gsub(/^---$/, '&#45;&#45;&#45;')

  fm = {
    'layout' => 'post',
    'title' => title,
    'date' => date_obj.strftime('%Y-%m-%d %H:%M:%S %z'),
    'last_modified_at' => modified,
    'author' => author_display,
    'author_login' => author_login,
    'categories' => categories,
    'tags' => tags,
    'image' => image_url,
    'excerpt' => excerpt.to_s,
    'wordpress_post_id' => post_id,
    'wordpress_slug' => slug,
    'wordpress_status' => status,
    'wordpress_link' => original_link
  }

  fm['published'] = false unless status == 'publish'

  slug_counts[slug] += 1
  final_slug = slug_counts[slug] > 1 ? "#{slug}-#{slug_counts[slug]}" : slug
  filename = "#{date_obj.strftime('%Y-%m-%d')}-#{final_slug}.md"
  path = File.join(OUT_DIR, filename)

  front_matter = fm.to_yaml.sub(/\A---\s*\n/, "---\n").sub(/\n\.\.\.\s*\z/, "\n")
  body = content.strip
  output = "#{front_matter}---\n\n#{body}\n"

  existed = File.exist?(path)
  File.write(path, output)
  existed ? updated += 1 : created += 1
end

puts "Importacao concluida."
puts "Criados: #{created}"
puts "Atualizados: #{updated}"
puts "Total _posts: #{Dir.glob(File.join(OUT_DIR, '*.md')).size}"
