<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<title>Evento</title>
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

		<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />
		<link rel="stylesheet" href="/style/style.css" />

 <script>
        let menu = document.querySelector('#menu-bars');
        let navbar = document.querySelector('.navbar');
        menu.onclick = () => {
            menu.classList.toggle('fa-times');
            navbar.classList.toggle('active');
        };

        let themeToggler = document.querySelector('.theme-toggler');
        let toggleBtn = document.querySelector('.toggle-btn');
        toggleBtn.onclick = () => {
            themeToggler.classList.toggle('active');
        };

        window.onscroll = () => {
            menu.classList.remove('fa-times');
            navbar.classList.remove('active');
            themeToggler.classList.remove('active');
        };

        document.querySelectorAll('.theme-toggler .theme-btn').forEach(btn => {
            btn.onclick = () => {
                let color = getComputedStyle(btn).backgroundColor;
                document.querySelector(':root').style.setProperty('--main-color', color);
            };
        });

        // Form submission and validation logic
        document.getElementById("contactForm").addEventListener("submit", function (e) {
            e.preventDefault(); // Prevent the form from submitting by default
            clearErrors(); // Reset previous error messages

            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var subject = document.getElementById("subject").value;
            var message = document.getElementById("message").value;

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
                // You can also submit the form here if needed
            }
        });

        function isValidEmail(email) {
            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            return emailPattern.test(email);
        }

        function displayError(elementId, errorMessage) {
            document.getElementById(elementId).textContent = errorMessage;
        }

        function clearErrors() {
            var errorElements = document.getElementsByClassName("error");
            for (var i = 0; i < errorElements.length; i++) {
                errorElements[i].textContent = "";
            }
        }



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

var faq = document.getElementsByClassName("faq-page");
var i;

for (i = 0; i < faq.length; i++) {
    faq[i].addEventListener("click", function () {
        /* Toggle between adding and removing the "active" class,
        to highlight the button that controls the panel */
        this.classList.toggle("active");

        /* Toggle between hiding and showing the active panel */
        var body = this.nextElementSibling;
        if (body.style.display === "block") {
            body.style.display = "none";
        } else {
            body.style.display = "block";
        }
    });
}

    </script>


	</head>
	<body>
		<!--header section starts-->
		<header class="header">
			<a href="#" class="logo">
				<span>e</span>vento</a>
			<nav class="navbar">
				<a href="#home">home</a>
				<a href="#service">service</a>
				<a href="#about">about</a>
				<a href="#gallery">gallery</a>
				<a href="#price">price</a>
				<a href="#review">review</a>
				<a href="#contact">contact</a>
			</nav>
			<div id="menu-bars" class="fas fa-bars">
			</div>
		</header>
		<!--header section ends-->
		<!--home section starts-->
		<section class="home" id="home">
			<div class="content">
				<h3>Its time to celebrate!! the best <span>event organizers</span>
				</h3>
				<a href="#contact" class="btn">contact us</a>
			</div>
		</section>
		<div class="swiper-container home-slider">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/slide-1.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/slide-6.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/slide-3.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/slide-4.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/slide-5.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/slide-7.jpg" alt="" />
				</div>
			</div>
		</div>

		<!--home section ends-->
		<!--service section starts-->
		<section class="service" id="service">
			<h1 class="heading">our <span>services</span>
			</h1>
			<div class="box-container">
				<div class="box">
					<i class="fas fa-map-marker-alt">
					</i>
					<h3>venue selection</h3>
					<p>Lorem ipsum dolorm, ducimus quis vero et quam!</p>
				</div>

				<div class="box">
					<i class="fas fa-envelope">
					</i>
					<h3>invitation card</h3>
					<p>Lorem ipsum dolorm, ducimus quis vero et quam!</p>
				</div>
				<div class="box">
					<i class="fas fa-music">
					</i>
					<h3>entertainment</h3>
					<p>Lorem ipsum dolorm, ducimus quis vero et quam!</p>
				</div>
				<div class="box">
					<i class="fas fa-utensils">
					</i>
					<h3>food and drinks</h3>
					<p>Lorem ipsum dolorm, ducimus quis vero et quam!</p>
				</div>
				<div class="box">
					<i class="fas fa-photo-video">
					</i>
					<h3>photos and videos</h3>
					<p>Lorem ipsum dolorm, ducimus quis vero et quam!</p>
				</div>
				<div class="box">
					<i class="fas fa-birthday-cake">
					</i>
					<h3>custom food</h3>
					<p>Lorem ipsum dolorm, ducimus quis vero et quam!</p>
				</div>
			</div>
		</section>
		<!--service section ends-->
		<!--about section starts-->
		<section class="about" id="about">
			<h1 class="heading">
				<span>about</span>us</h1>
			<div class="row">
				<div class="image">
					<img src="images/about-img.jpg" alt="" />
				</div>
				<div class="content">
					<h3>we will give a very special celebration for you</h3>
					<p>Lorem, i ipsam saepe error laborum.</p>
					<p>Lorem ipsum, dol dicta sit quae cum ipsum ratione!</p>
					<a href="#contact" class="btn">contact us</a>
				</div>
			</div>
		</section>
		<!--about section ends-->

		<!-- gallery section starts -->
		<section class="gallery" id="gallery">
			<h1 class="heading">our <span>gallery</span>
			</h1>
			<div class="box-container">
				<div class="box">
					<img src="images/g1.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g2.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g3.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g4.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g5.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g6.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g7.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g8.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
				<div class="box">
					<img src="images/g9.jpg" alt="" />
					<h3 class="title">photos and events</h3>
					<div class="icons">
						<a href="#" class="fas fa-heart">
						</a>
						<a href="#" class="fas fa-share">
						</a>
						<a href="#" class="fas fa-eye">
						</a>
					</div>
				</div>
			</div>
		</section>
		<!-- gallery section ends -->

		<!-- price section starts -->
		<section class="price" id="price">
			<h1 class="heading">our <span>price</span>
			</h1>
			<div class="box-container">
				<div class="box">
					<h3 class="title">for birthdays</h3>
					<h3 class="amount">&#8377;50,000</h3>
					<ul>
						<li>
							<i class="fas fa-check">
							</i>full services</li>
						<li>
							<i class="fas fa-check">
							</i>decorations</li>
						<li>
							<i class="fas fa-check">
							</i>music and photos</li>
						<li>
							<i class="fas fa-check">
							</i>food and drinks</li>
						<li>
							<i class="fas fa-check">
							</i>invitation card</li>
					</ul>
					<a href="#contact" class="btn">check out</a>
				</div>
				<div class="box">
					<h3 class="title">for weddings</h3>
					<h3 class="amount">&#8377;20,00,000</h3>
					<ul>
						<li>
							<i class="fas fa-check">
							</i>full services</li>
						<li>
							<i class="fas fa-check">
							</i>decorations</li>
						<li>
							<i class="fas fa-check">
							</i>music and photos</li>
						<li>
							<i class="fas fa-check">
							</i>food and drinks</li>
						<li>
							<i class="fas fa-check">
							</i>invitation card</li>
					</ul>
					<a href="#contact" class="btn">check out</a>
				</div>
				<div class="box">
					<h3 class="title">for concerts</h3>
					<h3 class="amount">&#8377;50,00,000</h3>
					<ul>
						<li>
							<i class="fas fa-check">
							</i>full services</li>
						<li>
							<i class="fas fa-check">
							</i>decorations</li>
						<li>
							<i class="fas fa-check">
							</i>music and photos</li>
						<li>
							<i class="fas fa-check">
							</i>food and drinks</li>
						<li>
							<i class="fas fa-check">
							</i>invitation card</li>
					</ul>
					<a href="#contact" class="btn">check out</a>
				</div>
				<div class="box">
					<h3 class="title">for others</h3>
					<h3 class="amount">&#8377;1,00,000</h3>
					<ul>
						<li>
							<i class="fas fa-check">
							</i>full services</li>
						<li>
							<i class="fas fa-check">
							</i>decorations</li>
						<li>
							<i class="fas fa-check">
							</i>music and photos</li>
						<li>
							<i class="fas fa-check">
							</i>food and drinks</li>
						<li>
							<i class="fas fa-check">
							</i>invitation card</li>
					</ul>
					<a href="#contact" class="btn">check out</a>
				</div>
			</div>
		</section>
		<!-- price section ends -->
		<!-- review section starts -->
		<section class="review" id="review">
			<h1 class="heading">client's <span>review</span>
			</h1>
			<div class="review-slider swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide box">
						<i class="fas fa-quote-right">
						</i>
						<div class="user">
							<img src="images/pic1.jpg" alt="" />
							<div class="user-info">
								<h3>Ramesh</h3>
								<span>happy clients</span>
							</div>
						</div>
						<p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed
              velit nihil exercitationem, cumque aliquid, rem nisi illum
              accusamus quaerat, consectetur officiis! Adipisci earum vitae
              omnis ut tempora nisi maiores sapiente.
            </p>
					</div>
					<div class="swiper-slide box">
						<i class="fas fa-quote-right">
						</i>
						<div class="user">
							<img src="images/pic2.jpg" alt="" />
							<div class="user-info">
								<h3>Manisha</h3>
								<span>happy clients</span>
							</div>
						</div>
						<p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed
              velit nihil exercitationem, cumque aliquid, rem nisi illum
              accusamus quaerat, consectetur officiis! Adipisci earum vitae
              omnis ut tempora nisi maiores sapiente.
            </p>
					</div>
					<div class="swiper-slide box">
						<i class="fas fa-quote-right">
						</i>
						<div class="user">
							<img src="images/pic3.jpg" alt="" />
							<div class="user-info">
								<h3>poornima</h3>
								<span>happy clients</span>
							</div>
						</div>
						<p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed
              velit nihil exercitationem, cumque aliquid, rem nisi illum
              accusamus quaerat, consectetur officiis! Adipisci earum vitae
              omnis ut tempora nisi maiores sapiente.
            </p>
					</div>
					<div class="swiper-slide box">
						<i class="fas fa-quote-right">
						</i>
						<div class="user">
							<img src="images/pic4.jpg" alt="" />
							<div class="user-info">
								<h3>Akash</h3>
								<span>happy clients</span>
							</div>
						</div>
						<p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed
              velit nihil exercitationem, cumque aliquid, rem nisi illum
              accusamus quaerat, consectetur officiis! Adipisci earum vitae
              omnis ut tempora nisi maiores sapiente.
            </p>
					</div>
					<div class="swiper-slide box">
						<i class="fas fa-quote-right">
						</i>
						<div class="user">
							<img src="images/pic5.jpg" alt="" />
							<div class="user-info">
								<h3>Sakshi</h3>
								<span>happy clients</span>
							</div>
						</div>
						<p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed
              velit nihil exercitationem, cumque aliquid, rem nisi illum
              accusamus quaerat, consectetur officiis! Adipisci earum vitae
              omnis ut tempora nisi maiores sapiente.
            </p>
					</div>
				</div>
			</div>
		</section>




		<!-- Contact Section -->
	
<section class="contact" id="contact">
    <h1 class="heading"><span>Contact</span> Us</h1>
    <form id="contactForm" action="/contact/submit" method="post">
        <div class="inputBox">
            <input type="text" id="name" name="name" placeholder="Name" required />
            <input type="email" id="email" name="email" placeholder="Email" required />
        </div>
        <div class="inputBox">
            <input type="number" id="number" name="number" placeholder="Phone Number" required />
            <input type="text" id="subject" name="subject" placeholder="Subject" required />
        </div>
        <textarea name="message" id="message" placeholder="Your message" cols="30" rows="10" required></textarea>
        <input type="submit" value="Send Message" class="btn" />
    </form>
    <c:if test="${not empty successMessage}">
        <div class="success">${successMessage}</div>
    </c:if>
</section>


		<!-- Popup HTML (hidden initially) -->
		<div id="popup">
			<p>Message sent successfully!</p>
		</div>



		<!-- </body>
</html> -->


		<!-- Popup HTML (hidden initially) -->
		<div id="popup">
			<p>Message sent successfully!</p>
		</div>

	<!--	<script>
      document.body.addEventListener("submit", function (e) {
        if (e.target && e.target.id === "contactForm") {
          e.preventDefault(); // Prevent the form from submitting by default

          // Perform form submission here (e.g., send data to the server)

          // Show the popup
          document.getElementById("popup").style.display = "block";

          // Automatically close the popup after 5 seconds (5000 milliseconds)
          setTimeout(function () {
            document.getElementById("popup").style.display = "none";
          }, 3000);
        }
      });
    </script> -->

		<!-- contact section ends -->
		<!--faq-->
		<main>
			<h1 class="faq-heading">FAQ'S</h1>
			<section class="faq-container">
				<div class="faq-one">
					<!-- faq question -->
					<h1 class="faq-page">What is an FAQ Page?</h1>

					<!-- faq answer -->
					<div class="faq-body" style="font-size: 120%; width: 60%">
						<p>
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit
              saepe sequi, illum facere necessitatibus cum aliquam id illo omnis
              maxime, totam soluta voluptate amet ut sit ipsum aperiam.
              Perspiciatis, porro!
            </p>
					</div>
				</div>
				<hr class="hr-line" />

				<div class="faq-two">
					<!-- faq question -->
					<h1 class="faq-page">Why do you need an FAQ page?</h1>

					<!-- faq answer -->

					<div class="faq-body" style="font-size: 120%; width: 60%">
						<p>
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit
              saepe sequi, illum facere necessitatibus cum aliquam id illo omnis
              maxime, totam soluta voluptate amet ut sit ipsum aperiam.
              Perspiciatis, porro!
            </p>
					</div>
				</div>
				<hr class="hr-line" />

				<div class="faq-three">
					<!-- faq question -->
					<h1 class="faq-page">
            Does it improves the user experience of a website?
          </h1>

					<!-- faq answer -->
					<div class="faq-body" style="font-size: 120%; width: 60%">
						<p>
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Velit
              saepe sequi, illum facere necessitatibus cum aliquam id illo omnis
              maxime, totam soluta voluptate amet ut sit ipsum aperiam.
              Perspiciatis, porro!
            </p>
					</div>
				</div>
			</section>
		</main>

		<!--faq-->
		<!-- footer section starts -->
		<section class="footer">
			<div class="box-container">
				<div class="box">
					<h3>branches</h3>
					<a
            href="https://www.google.com/maps/place/Mumbai,+Maharashtra/@19.0826068,72.5515048,10z/data=!3m1!4b1!4m6!3m5!1s0x3be7c6306644edc1:0x5da4ed8f8d648c69!8m2!3d19.0759837!4d72.8776559!16zL20vMDR2bXA?authuser=0&entry=ttu"
            target="_blank"
          >
						<i class="fas fa-map-marker-alt">
						</i>mumbai</a
          >
					<a
            href="https://www.google.com/maps/place/Punjab/@31.0046217,72.7687956,7z/data=!3m1!4b1!4m6!3m5!1s0x391964aa569e7355:0x8fbd263103a38861!8m2!3d31.1471305!4d75.3412179!16zL20vMDc1X3Qy?authuser=0&entry=ttu"
            target="_blank"
          >
						<i class="fas fa-map-marker-alt">
						</i>punjab</a
          >
					<a
            href="https://www.google.com/maps/place/Chennai,+Tamil+Nadu/@13.0479859,79.8793277,10z/data=!3m1!4b1!4m6!3m5!1s0x3a5265ea4f7d3361:0x6e61a70b6863d433!8m2!3d13.0826802!4d80.2707184!16zL20vMGM4dGs?authuser=0&entry=ttu"
            target="_blank"
          >
						<i class="fas fa-map-marker-alt">
						</i>chennai</a
          >
					<a
            href="https://www.google.com/maps/place/Patna,+Bihar/@25.6082547,84.9782263,11z/data=!3m1!4b1!4m6!3m5!1s0x39f29937c52d4f05:0x831a0e05f607b270!8m2!3d25.5940947!4d85.1375645!16zL20vMDI3d3Zi?authuser=0&entry=ttu"
            target="_blank"
          >
						<i class="fas fa-map-marker-alt">
						</i>patna</a
          >
					<a
            href="https://www.google.com/maps/place/Pune,+Maharashtra/@18.5248706,73.6981497,11z/data=!3m1!4b1!4m6!3m5!1s0x3bc2bf2e67461101:0x828d43bf9d9ee343!8m2!3d18.5204303!4d73.8567437!16zL20vMDE1eTJx?authuser=0&entry=ttu"
            target="_blank"
          >
						<i class="fas fa-map-marker-alt">
						</i>pune</a
          >
				</div>
				<div class="box">
					<h3>quick links</h3>
					<a href="#home">
						<i class="fas fa-arrow-right">
						</i>home</a>
					<a href="#service">
						<i class="fas fa-arrow-right">
						</i>service</a>
					<a href="#about">
						<i class="fas fa-arrow-right">
						</i>about</a>
					<a href="#gallery">
						<i class="fas fa-arrow-right">
						</i>gallery</a>
					<a href="#price">
						<i class="fas fa-arrow-right">
						</i>price</a>
					<a href="#review">
						<i class="fas fa-arrow-right">
						</i>review</a>
					<a href="#contact">
						<i class="fas fa-arrow-right">
						</i>contact</a>
				</div>
				<div class="box">
					<h3>contact info</h3>
					<a href="#contact">
						<i class="fas fa-phone">
						</i>+123-456-7890</a>
					<a href="#contact">
						<i class="fas fa-phone">
						</i>+123-466-7880</a>
					<a href="mailto:Techtitans@gmail.com">
						<i class="fas fa-envelope">
						</i>Techtitans@gmail.com</a
          >
					<a href="mailto:titanstech@gmail.com">
						<i class="fas fa-envelope">
						</i>titanstech@gmail.com</a
          >
					<a
            href="https://www.google.com/maps/place/Mumbai,+Maharashtra/@19.0826068,72.5515048,10z/data=!3m1!4b1!4m6!3m5!1s0x3be7c6306644edc1:0x5da4ed8f8d648c69!8m2!3d19.0759837!4d72.8776559!16zL20vMDR2bXA?authuser=0&entry=ttu"
            target="_blank"
          >
						<i class="fas fa-map-marker-alt">
						</i>mumbai, india - 400104</a
          >
				</div>
				<div class="box">
					<h3>follow us</h3>
					<a href="https://www.facebook.com/" target="_blank">
						<i class="fab fa-facebook-f">
						</i>facebook</a
          >
					<a href="https://twitter.com/" target="_blank">
						<i class="fab fa-twitter">
						</i>twitter</a
          >
					<a href="https://www.instagram.com/" target="_blank">
						<i class="fab fa-instagram">
						</i>instagram</a
          >
					<a
            href="https://www.linkedin.com/in/vaishnavi-b-m-4386421b8/"
            target="_blank"
          >
						<i class="fab fa-linkedin">
						</i>linkedin</a
          >
				</div>
			</div>
			<div class="credit">
        created by <span>Tushar Mall</span> all rights reserved
      </div>
		</section>
		<!-- footer section ends  -->
		<!-- theme toggler -->
		<div class="theme-toggler">
			<div class="toggle-btn">
				<i class="fas fa-cog">
				</i>
			</div>
			<h3>choose color</h3>
			<div class="buttons">
				<div class="theme-btn" style="background-color: #3867d6">
				</div>
				<div class="theme-btn" style="background-color: #ec53b0">
				</div>
				<div class="theme-btn" style="background-color: #40f8ff">
				</div>
				<div class="theme-btn" style="background-color: #c70039">
				</div>
				<div class="theme-btn" style="background-color: #cd6688">
				</div>
				<div class="theme-btn" style="background-color: #3aa6b9">
				</div>
			</div>
		</div>

		<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js">
		</script>

		<script src="/js/script.js">
		</script>
		<script src="/js/main.js">
		</script>
	
	</body>
</html>
