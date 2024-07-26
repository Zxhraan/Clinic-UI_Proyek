document.getElementById('registrationForm').addEventListener('submit', function(event) {
    event.preventDefault();

    let fullName = document.getElementById('fullName').value.trim();
    let email = document.getElementById('email').value.trim();
    let phone = document.getElementById('phone').value.trim();
    let password = document.getElementById('password').value.trim();
    let confirmPassword = document.getElementById('confirmPassword').value.trim();

    if (!/^[A-Za-z\s]+$/.test(fullName)) {
        alert('Nama harus hanya berisi huruf.');
        return;
    }

    if (!/^\d+$/.test(phone)) {
        alert('Nomor telepon harus berisi angka saja.');
        return;
    }

    if (password.length < 8) {
        alert('Password harus minimal 8 karakter.');
        return;
    }

    if (password !== confirmPassword) {
        alert('Password dan konfirmasi password tidak cocok.');
        return;
    }

    // Store the user data in localStorage
    localStorage.setItem('user', JSON.stringify({ email, password }));

    document.getElementById('modal').style.display = 'block';
});

document.querySelector('.close').addEventListener('click', function() {
    document.getElementById('modal').style.display = 'none';
});

document.getElementById('okBtn').addEventListener('click', function() {
    window.location.href = 'index.html'; // Redirect to home page
});




