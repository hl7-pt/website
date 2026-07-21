const toggle = document.querySelector('.menu-toggle');
const menu = document.querySelector('.site-nav');

if (toggle && menu) {
    toggle.addEventListener('click', () => {
        const expanded = toggle.getAttribute('aria-expanded') === 'true';
        toggle.setAttribute('aria-expanded', String(!expanded));
        menu.classList.toggle('open');
    });
}

const slides = document.querySelectorAll('.carousel-slide');
let currentSlide = 0;

function showSlide(index) {
    slides.forEach((slide, i) => {
        slide.classList.toggle('active', i === index);
    });
}

if (slides.length > 0) {
    showSlide(currentSlide);
    setInterval(() => {
        currentSlide = (currentSlide + 1) % slides.length;
        showSlide(currentSlide);
    }, 4500);
}
