// Menu toggle logic
let menu = document.querySelector('#menu-bars');
let navbar = document.querySelector('.navbar');

menu.onclick = () => {
	menu.classList.toggle('fa-times');
	navbar.classList.toggle('active');
};

// Theme toggle logic
let themeToggler = document.querySelector('.theme-toggler');
let toggleBtn = document.querySelector('.toggle-btn');

toggleBtn.onclick = () => {
	themeToggler.classList.toggle('active');
};

// Scroll event to reset active states
window.onscroll = () => {
	menu.classList.remove('fa-times');
	navbar.classList.remove('active');
	themeToggler.classList.remove('active');
};

// Theme color change logic
document.querySelectorAll('.theme-toggler .theme-btn').forEach(btn => {
	btn.onclick = () => {
		let color = getComputedStyle(btn).backgroundColor;
		document.querySelector(':root').style.setProperty('--main-color', color);
	};
});

// Swiper for home slider
var swiperHome = new Swiper(".home-slider", {
	effect: "coverflow",
	grabCursor: true,
	centeredSlides: true,
	slidesPerView: "auto",
	coverflowEffect: {
		rotate: 0,
		stretch: 0,
		depth: 100,
		modifier: 10,
		slideShadows: true,
	},
	loop: true,
	autoplay: {
		delay: 3000,
		disableOnInteraction: false,
	},
});

// Swiper for review slider
var swiperReview = new Swiper(".review-slider", {
	slidesPerView: 1,
	grabCursor: true,
	loop: true,
	spaceBetween: 10,
	breakpoints: {
		0: {
			slidesPerView: 1,
		},
		700: {
			slidesPerView: 2,
		},
		1050: {
			slidesPerView: 3,
		},
	},
	autoplay: {
		delay: 5000,
		disableOnInteraction: false,
	},
});

// Form submission and validation logic
document.getElementById("contactForm").addEventListener("submit", function(e) {
	e.preventDefault(); // Prevent form submission by default
	clearErrors(); // Reset previous error messages

	// Get form input values
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var subject = document.getElementById("subject").value;
	var message = document.getElementById("message").value;

	// Perform validation checks
	var isValid = true;

	if (name.trim() === "") {
		displayError("nameError", "Please enter your name.");
		isValid = false;
	}

	if (!isValidEmail(email)) {
		displayError("emailError", "Please enter a valid email address.");
		isValid = false;
	}

	if (subject.trim() === "") {
		displayError("subjectError", "Please enter a subject.");
		isValid = false;
	}

	if (message.trim() === "") {
		displayError("messageError", "Please enter your message.");
		isValid = false;
	}

    if (isValid) {
        alert("Form submitted successfully!");
        
        // Redirect to the same page
        window.location.href = "http://localhost:8080/contact";
    }
});

// Helper function to validate email
function isValidEmail(email) {
	var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	return emailPattern.test(email);
}

// Function to display error messages
function displayError(elementId, errorMessage) {
	document.getElementById(elementId).textContent = errorMessage;
}

// Function to clear previous error messages
function clearErrors() {
	var errorElements = document.getElementsByClassName("error");
	for (var i = 0; i < errorElements.length; i++) {
		errorElements[i].textContent = "";
	}
}
