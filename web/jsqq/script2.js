$(document).ready(function() {
    const doctors = [
        {
            name: "Dr. John Doe",
            specialty: "Cardiology",
            birthDate: "1975-05-20",
            description: "An experienced cardiologist with over 20 years of experience.",
            experience: "Worked at General Hospital for 15 years.",
            achievements: "Published 50+ research papers.",
            contact: "123-456-7890",
            image: "hilmi2.jpg"
        },
        {
            name: "Dr. Jane Smith",
            specialty: "Neurology",
            birthDate: "1980-07-15",
            description: "Specializes in neurological disorders and treatments.",
            experience: "Head of Neurology at City Hospital.",
            achievements: "Awarded 'Best Neurologist' in 2018.",
            contact: "987-654-3210",
            image: "hilmi1.jpg"
        },
        {
            name: "Dr. Emily Johnson",
            specialty: "Pediatrics",
            birthDate: "1985-12-05",
            description: "Caring for children with utmost dedication.",
            experience: "Pediatrician at Kids Care Hospital.",
            achievements: "Developed new treatment protocols for childhood illnesses.",
            contact: "555-123-4567",
            image: "hilmi1.jpg"
        },
        {
            name: "Dr. Michael Brown",
            specialty: "Orthopedics",
            birthDate: "1978-03-14",
            description: "Expert in bone and joint health.",
            experience: "Orthopedic surgeon at Central Clinic.",
            achievements: "Performed 1000+ successful surgeries.",
            contact: "321-654-9870",
            image: "hilmi1.jpg"
        },
        {
            name: "Dr. Sarah Davis",
            specialty: "Dermatology",
            birthDate: "1983-09-23",
            description: "Specialist in skin care and treatment.",
            experience: "Dermatologist at Skin Health Center.",
            achievements: "Introduced innovative skin treatments.",
            contact: "654-789-1230",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. Robert Wilson",
            specialty: "Gastroenterology",
            birthDate: "1974-11-11",
            description: "Focused on digestive system health.",
            experience: "Lead Gastroenterologist at City Clinic.",
            achievements: "Pioneered non-invasive procedures.",
            contact: "789-321-4560",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. Linda Martinez",
            specialty: "Oncology",
            birthDate: "1982-04-10",
            description: "Dedicated to cancer treatment and research.",
            experience: "Oncologist at Regional Cancer Center.",
            achievements: "Received multiple awards for research.",
            contact: "123-789-6540",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. James Taylor",
            specialty: "Psychiatry",
            birthDate: "1976-06-30",
            description: "Expert in mental health and therapy.",
            experience: "Chief Psychiatrist at Wellness Hospital.",
            achievements: "Authored several books on mental health.",
            contact: "456-321-7890",
            image : "uii.jpg"
        },
        {
            name: "Dr. James Taylor",
            specialty: "Psychiatry",
            birthDate: "1976-06-30",
            description: "Expert in mental health and therapy.",
            experience: "Chief Psychiatrist at Wellness Hospital.",
            achievements: "Authored several books on mental health.",
            contact: "456-321-7890",
            image : "uii.jpg"
        },
        {
            name: "Dr. John Doe",
            specialty: "Cardiology",
            birthDate: "1975-05-20",
            description: "An experienced cardiologist with over 20 years of experience.",
            experience: "Worked at General Hospital for 15 years.",
            achievements: "Published 50+ research papers.",
            contact: "123-456-7890",
            image: "hilmi2.jpg"
        },
        {
            name: "Dr. Jane Smith",
            specialty: "Neurology",
            birthDate: "1980-07-15",
            description: "Specializes in neurological disorders and treatments.",
            experience: "Head of Neurology at City Hospital.",
            achievements: "Awarded 'Best Neurologist' in 2018.",
            contact: "987-654-3210",
            image: "hilmi1.jpg"
        },
        {
            name: "Dr. Emily Johnson",
            specialty: "Pediatrics",
            birthDate: "1985-12-05",
            description: "Caring for children with utmost dedication.",
            experience: "Pediatrician at Kids Care Hospital.",
            achievements: "Developed new treatment protocols for childhood illnesses.",
            contact: "555-123-4567",
            image: "hilmi1.jpg"
        },
        {
            name: "Dr. Michael Brown",
            specialty: "Orthopedics",
            birthDate: "1978-03-14",
            description: "Expert in bone and joint health.",
            experience: "Orthopedic surgeon at Central Clinic.",
            achievements: "Performed 1000+ successful surgeries.",
            contact: "321-654-9870",
            image: "hilmi1.jpg"
        },
        {
            name: "Dr. Sarah Davis",
            specialty: "Dermatology",
            birthDate: "1983-09-23",
            description: "Specialist in skin care and treatment.",
            experience: "Dermatologist at Skin Health Center.",
            achievements: "Introduced innovative skin treatments.",
            contact: "654-789-1230",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. Robert Wilson",
            specialty: "Gastroenterology",
            birthDate: "1974-11-11",
            description: "Focused on digestive system health.",
            experience: "Lead Gastroenterologist at City Clinic.",
            achievements: "Pioneered non-invasive procedures.",
            contact: "789-321-4560",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. Linda Martinez",
            specialty: "Oncology",
            birthDate: "1982-04-10",
            description: "Dedicated to cancer treatment and research.",
            experience: "Oncologist at Regional Cancer Center.",
            achievements: "Received multiple awards for research.",
            contact: "123-789-6540",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. James Taylor",
            specialty: "Psychiatry",
            birthDate: "1976-06-30",
            description: "Expert in mental health and therapy.",
            experience: "Chief Psychiatrist at Wellness Hospital.",
            achievements: "Authored several books on mental health.",
            contact: "456-321-7890",
            image : "uii.jpg"
        },
        {
            name: "Dr. Robert Wilson",
            specialty: "Gastroenterology",
            birthDate: "1974-11-11",
            description: "Focused on digestive system health.",
            experience: "Lead Gastroenterologist at City Clinic.",
            achievements: "Pioneered non-invasive procedures.",
            contact: "789-321-4560",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. Linda Martinez",
            specialty: "Oncology",
            birthDate: "1982-04-10",
            description: "Dedicated to cancer treatment and research.",
            experience: "Oncologist at Regional Cancer Center.",
            achievements: "Received multiple awards for research.",
            contact: "123-789-6540",
            image: "ayyy.jpg"
        },
        {
            name: "Dr. James Taylor",
            specialty: "Psychiatry",
            birthDate: "1976-06-30",
            description: "Expert in mental health and therapy.",
            experience: "Chief Psychiatrist at Wellness Hospital.",
            achievements: "Authored several books on mental health.",
            contact: "456-321-7890",
            image : "uii.jpg"
        },
    ];


    function loadDoctors() {
        const $doctorList = $('.doctor-list');
        doctors.forEach(doctor => {
            const $doctorItem = $(`
                <div class="doctor-item">
                    <img src="${doctor.image}" alt="${doctor.name}">
                    <h2>${doctor.name}</h2>
                    <p><strong>Specialty:</strong> ${doctor.specialty}</p>
                    
                    <p><strong>Description:</strong> ${doctor.description}</p>
                    <p><strong>Experience:</strong> ${doctor.experience}</p>
                    <p><strong>Achievements:</strong> ${doctor.achievements}</p>
                    <p class="contact"><strong>Contact:</strong> ${doctor.contact}</p>
                </div>
            `);
            $doctorList.append($doctorItem);
        });
    }

    loadDoctors();
});


/*navbar activeate */

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

  /*login 


document.getElementById('loginBtn').addEventListener('click', function() {
    document.getElementById('loginModal').style.display = 'block';
});

document.querySelectorAll('.close').forEach(function(closeBtn) {
    closeBtn.addEventListener('click', function() {
        document.querySelectorAll('.modal').forEach(function(modal) {
            modal.style.display = 'none';
        });
    });
});

document.getElementById('loginSubmit').addEventListener('click', function() {
    let loginEmail = document.getElementById('loginEmail').value.trim();
    let loginPassword = document.getElementById('loginPassword').value.trim();

    let storedUser = JSON.parse(localStorage.getItem('user'));

    if (storedUser && loginEmail === storedUser.email && loginPassword === storedUser.password) {
        document.getElementById('loginModal').style.display = 'none';
        document.getElementById('loginBtn').remove();

        let logoutBtn = document.createElement('button');
        logoutBtn.id = 'logoutBtn';
        logoutBtn.textContent = 'Logout';
        document.querySelector('nav ul').appendChild(logoutBtn);

        logoutBtn.addEventListener('click', function() {
            document.getElementById('logoutModal').style.display = 'block';
        });

        document.getElementById('logoutYes').addEventListener('click', function() {
            document.getElementById('logoutModal').style.display = 'none';
            logoutBtn.remove();
            let loginBtn = document.createElement('button');
            loginBtn.id = 'loginBtn';
            loginBtn.textContent = 'Login';
            document.querySelector('nav ul').appendChild(loginBtn);
            loginBtn.addEventListener('click', function() {
                document.getElementById('loginModal').style.display = 'block';
            });
        });

        document.getElementById('logoutNo').addEventListener('click', function() {
            document.getElementById('logoutModal').style.display = 'none';
        });
    } else {
        alert('Email atau password salah.');
    }
});

*/