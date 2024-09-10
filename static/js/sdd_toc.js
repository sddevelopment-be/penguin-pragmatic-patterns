function clearActiveStatesInTableOfContents() {
    document.querySelectorAll('aside nav li').forEach((section) => {
        section.classList.remove('active');
    });
}

window.addEventListener('DOMContentLoaded', () => {

    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            const id = entry.target.getAttribute('id');
            console.log(" ${entry} :: ${id} ");
            if (entry.intersectionRatio > 0) {
                console.log(`nav li a[href="#${id}"] -- ACTIVE`);
                clearActiveStatesInTableOfContents()
                document.querySelector(`nav li a[href="#${id}"]`).parentElement.classList.add('active');
            } else {
                console.log(`nav li a[href="#${id}"] -- INACTIVE`);
                // document.querySelector(`nav li a[href="#${id}"]`).parentElement.classList.remove('active');
            }

        });
    });

    // Track all sections that have an `id` applied
    document.querySelectorAll('section div h2[id]').forEach((section) => {
        observer.observe(section);
    });
    document.querySelectorAll('section div h3[id]').forEach((section) => {
        observer.observe(section);
    });
});
