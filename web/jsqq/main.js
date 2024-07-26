const menuBar = document.querySelector(".menu-bar");
const menuNav = document.querySelector(".menu");

menuBar.addEventListener('click', () => {
    menuNav.classList.toggle("menu-active")
});

const navBar = document.querySelector(".navbar");

// script.js
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 50) { // Adjust the scroll position as needed
      navbar.classList.add('scrolling-active');
    } else {
      navbar.classList.remove('scrolling-active');
    }
  });
  





/* otomatis corousal*/ 
let currentIndex = 0;
let slides = document.querySelectorAll('.carousel-item');
let totalSlides = slides.length;

function showSlide(index) {
    if (index >= totalSlides) {
        currentIndex = 0;
    } else if (index < 0) {
        currentIndex = totalSlides - 1;
    } else {
        currentIndex = index;
    }

    slides.forEach((slide, i) => {
        slide.style.display = (i === currentIndex) ? 'block' : 'none';
    });
}

function nextSlide() {
    showSlide(currentIndex + 1);
}

function prevSlide() {
    showSlide(currentIndex - 1);
}

// Initialize the carousel
showSlide(currentIndex);

// Auto slide every 3 seconds
setInterval(nextSlide, 3000);




/*pesanan  */



function manageAppointment() {
    alert('Redirecting to manage appointment...');
    // Here you can add the actual redirection code
    // window.location.href = 'manage_appointment_url';
}


document.addEventListener('DOMContentLoaded', () => {
    const sidebarItems = document.querySelectorAll('.sidebarrr ul li');
    const contentSections = document.querySelectorAll('.contentt-section');

    sidebarItems.forEach(item => {
        item.addEventListener('click', () => {
            // Remove active class from all sidebar items
            sidebarItems.forEach(i => i.classList.remove('active'));
            // Add active class to the clicked sidebar item
            item.classList.add('active');

            // Hide all content sections
            contentSections.forEach(section => section.classList.remove('active'));
            // Show the content section corresponding to the clicked sidebar item
            const sectionId = item.getAttribute('data-section');
            document.getElementById(sectionId).classList.add('active');
        });
    });
});





