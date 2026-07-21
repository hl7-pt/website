document.querySelectorAll('table[data-sortable="true"]').forEach((table) => {
    const headers = table.querySelectorAll('th[data-sort]');
    const body = table.querySelector('tbody');
    if (!body) {
        return;
    }

    headers.forEach((header, index) => {
        header.style.cursor = 'pointer';
        header.addEventListener('click', () => {
            const rows = Array.from(body.querySelectorAll('tr'));
            const isNumeric = header.dataset.sort === 'number';
            const direction = header.dataset.direction === 'asc' ? 'desc' : 'asc';
            header.dataset.direction = direction;

            rows.sort((a, b) => {
                const aValue = a.children[index].innerText.trim();
                const bValue = b.children[index].innerText.trim();

                if (isNumeric) {
                    const aNum = Number(aValue.replace(',', '.'));
                    const bNum = Number(bValue.replace(',', '.'));
                    return direction === 'asc' ? aNum - bNum : bNum - aNum;
                }

                return direction === 'asc'
                    ? aValue.localeCompare(bValue, 'pt')
                    : bValue.localeCompare(aValue, 'pt');
            });

            rows.forEach((row) => body.appendChild(row));
        });
    });
});
