document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById('clinicForm');
    const pasteCodeBtn = document.getElementById('pasteCode');
    const voucherInput = document.getElementById('voucher');
    const dateInput = document.getElementById('tanggal_kunjungan');
    const timeInput = document.getElementById('jam_kunjungan');

    const modal = document.getElementById('confirmationModal');
    const closeModalBtn = document.querySelector('.close-btn');
    const confirmBtn = document.getElementById('confirmBtn');

    const confirmName = document.getElementById('confirmName');
    const confirmService = document.getElementById('confirmService');
    const confirmDate = document.getElementById('confirmDate');
    const confirmTime = document.getElementById('confirmTime');

    pasteCodeBtn.addEventListener('click', function(event) {
        event.preventDefault();
        navigator.clipboard.readText()
            .then(text => {
                voucherInput.value = text;
            })
            .catch(err => {
                alert('Gagal membaca isi clipboard: ', err);
            });
    });

    form.addEventListener('submit', function(event) {
        event.preventDefault();
        const name = document.getElementById('nama').value;
        const service = document.getElementById('layanan').value;
        const visitDate = dateInput.value;
        const visitTime = timeInput.value;

        // Validasi tanggal kunjungan
        const today = new Date();
        const selectedDate = new Date(visitDate);
        const selectedTime = new Date(`1970-01-01T${visitTime}`);

        if (selectedDate < today || (selectedDate.getTime() === today.getTime() && selectedTime <= today)) {
            alert('Silakan pilih tanggal dan jam kunjungan yang valid.');
            return;
        }

        confirmName.textContent = `Nama Pengisi: ${name}`;
        confirmService.textContent = `Layanan yang Dipilih: ${service}`;
        confirmDate.textContent = `Tanggal Kunjungan: ${visitDate}`;
        confirmTime.textContent = `Jam: ${visitTime}`;

        modal.style.display = "flex";
    });

    dateInput.addEventListener('input', function() {
        // Hapus isi dari input kode voucher saat tanggal kunjungan berubah
        voucherInput.value = '';
    });

    closeModalBtn.addEventListener('click', function() {
        modal.style.display = "none";
    });

    confirmBtn.addEventListener('click', function() {
        modal.style.display = "none";
        setTimeout(function() {
            window.location.href = "index.jsp";
        }, 3000);
    });

    window.addEventListener('click', function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    });

    // Set minimum tanggal kunjungan ke hari ini
    const today = new Date().toISOString().split('T')[0];
    dateInput.setAttribute('min', today);

    // Validasi jam kunjungan jika tanggal sama dengan tanggal hari ini
    dateInput.addEventListener('input', function() {
        const selectedDate = new Date(dateInput.value);
        const today = new Date();

        if (selectedDate.getTime() === today.getTime()) {
            const currentHour = today.getHours();
            const currentMinutes = today.getMinutes();
            const selectedTime = new Date(`1970-01-01T${timeInput.value}`);

            if (selectedTime.getHours() < currentHour || (selectedTime.getHours() === currentHour && selectedTime.getMinutes() <= currentMinutes)) {
                alert('Silakan pilih jam kunjungan yang valid.');
                timeInput.value = ''; // Menghapus jam kunjungan jika tidak valid
            }
        }
    });
});
