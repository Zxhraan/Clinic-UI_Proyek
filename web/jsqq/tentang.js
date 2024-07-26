document.addEventListener("DOMContentLoaded", function() {
    const navbar = document.querySelector('header');
    const menuBar = document.querySelector('.menu-bar');
    const menu = document.querySelector('.menu');
    let slideIndex = 0;

    // Change navbar style on scroll
    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            navbar.classList.add('scrolling-active');
        } else {
            navbar.classList.remove('scrolling-active');
        }
    });

    // Toggle menu
    menuBar.addEventListener('click', () => {
        menu.classList.toggle('menu-active');
    });

    // Carousel functionality
    const carouselItems = document.querySelectorAll('.carousel-item');
    const totalSlides = carouselItems.length;

    function showSlide(index) {
        carouselItems.forEach((item, idx) => {
            item.style.display = (idx === index) ? 'block' : 'none';
        });
    }

    function nextSlide() {
        slideIndex = (slideIndex + 1) % totalSlides;
        showSlide(slideIndex);
    }

    function prevSlide() {
        slideIndex = (slideIndex - 1 + totalSlides) % totalSlides;
        showSlide(slideIndex);
    }

    // Initialize the first slide
    showSlide(slideIndex);

    // Auto-slide every 3 seconds
    setInterval(nextSlide, 3000);

    // Event listeners for carousel controls
    document.querySelector('.carousel-control.next').addEventListener('click', nextSlide);
    document.querySelector('.carousel-control.prev').addEventListener('click', prevSlide);
});
