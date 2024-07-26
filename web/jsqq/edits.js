$(document).ready(function(){
    $('.hero-carousel').slick({
        autoplay: true,
        autoplaySpeed: 500,
        dots: true,
        fade: true,
        speed: 500,
        cssEase: 'linear'
    });

    $('.testimonial-carousel').slick({
        autoplay: true,
        autoplaySpeed: 500,
        dots: true,
        arrows: false,
        fade: true,
        speed: 500,
        cssEase: 'linear'
    });

    AOS.init({
        duration: 4000,
        once: true
    });

    window.addEventListener('scroll', function() {
        const scrollUpButton = document.querySelector('.scroll-up');
        if (window.scrollY > 300) {
            scrollUpButton.classList.add('show');
        } else {
            scrollUpButton.classList.remove('show');
        }
    });

    document.querySelector('.scroll-up').addEventListener('click', function() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });
});

