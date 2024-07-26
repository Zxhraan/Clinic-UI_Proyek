document.addEventListener("DOMContentLoaded", function () {
  // Simulate loading time
  setTimeout(function () {
    // Hide loading screen
    var loadingScreen = document.getElementById("loading-screen");
    loadingScreen.style.opacity = "0";
    loadingScreen.style.pointerEvents = "none";

    // Show main content
    var mainContent = document.getElementById("main-content");
    mainContent.style.display = "block";

    // Redirect to main page after 1 second
    setTimeout(function () {
      window.location.href = "index.html"; // Replace with your main page URL
    }, 3500); // Adjust the timeout to ensure a smooth transition (1 second in this example)

  }, 3000); // Adjust the timeout value as per your need (5 seconds in this example)
});

