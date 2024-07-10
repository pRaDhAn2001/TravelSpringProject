<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Travel Website-Snehasish Pradhan</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

</head>


<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

.header {
	height: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.5)), url("https://tse2.mm.bing.net/th/id/OIP.mXGGIyrAKR346VoVDU2p_AHaEK?rs=1&pid=ImgDetMain");
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	padding-top: 25px;
	padding-bottom: 200px;
	text-align: center;
	color: #fff;
}

.header img {
	width: 120px;
	float: left;
}

.login-btn {
	width: 100px;
	padding: 8px 0;
	outline: none !important;
	border: 2px solid #fff;
	border-radius: 50px;
	background: transparent;
	color: #fff;
	float: right;
}

.signin-btn {
	width: 100px;
	padding: 8px 0;
	border: none !important;
	background: transparent;
	color: #fff;
	font-weight: 600;
	float: right;
}

.header h1 {
	padding-top: 250px;
	padding-bottom: 0;
	font-size: 50px;
	color: #fff;
}

.header p {
	margin: 18px 0;
}

.input-group {
	width: 90% !important;
	max-width: 500px;
	border-radius: 30px;
	background: #fff;
	margin: auto;
	padding: 2px;
}

.form-control {
	border: 0 !important;
	border-radius: 30px !important;
	margin: auto;
	box-shadow: none !important;
}

.input-group-text {
	width: 100px;
	background-image: linear-gradient(#00ff7e, #1f3d90);
	border: 0 !important;
	color: #fff !important;
	padding: 15px !important;
	border-radius: 30px !important;
	box-shadow: none !important;
}

.features {
	padding: 100px 0;
}

h1 {
	text-align: center;
	padding-bottom: 30px;
	color: brown;
}

.feature-img img {
	width: 100%;
}

.price {
	width: 60px;
	height: 60px;
	background: #ff5722;
	color: #fff;
	font-weight: 600;
	border-radius: 40%;
	padding: 10px;
	box-shadow: 0 0 10px 1px rgba(37, 73, 214, 0.18);
	position: absolute;
	left: 20px;
	bottom: -30px;
}

.feature-img {
	height: 30vh;
	width: 100%;
	position: relative;
	padding: 0;
}

.rating {
	padding: 3px;
	float: right;
	background: #fff;
	bottom: -1px;
	right: 0;
	position: absolute;
}

.features .fa {
	font-size: 15px;
	color: #ff5722;
}

.feature-details {
	padding: 30px;
	text-align: center;
}

.feature-details h4 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 600;
	margin-top: 20px;
}

.feature-details .fa {
	margin-right: 6px;
	margin-bottom: 10px;
}

.feature-box {
	height: 50vh;
	width: 50vh;
	box-shadow: 0 0 10px 5px rgba(37, 73, 214, 0.18);
	margin-bottom: 50px !important;
	margin: 10px;
	padding: 10px;
}

.gallery {
	padding: 100px 0;
	background: wheat;
}

.gallery h1 {
	font-family: 'Times New Roman', Times, serif;
	font-weight: 700;
	color: sienna;
	padding-top: 0% !important;
}

.gallery-box img {
	width: 100%;
	border-radius: 10px;
	cursor: pointer;
	transition: 1s;
	height: 35vh;
}

.gallery-box img:hover {
	transform: scale(1.1);
}

.gallery-box h4 {
	display: block;
	color: #fff;
	text-shadow: -2px 2px 2px #000;
	font-weight: 600;
	font-size: 15px;
	position: absolute;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.gallery-box {
	position: relative;
	margin-bottom: 30px;
}

.banner {
	height: 80%;
	background-position: center;
	background-size: cover;
	background-attachment: fixed;
	padding-top: 13%;
}

.banner-highlights {
	padding: 70px 0;
	background: rgba(0, 0, 0, 0.7);
	text-align: justify;
	color: #fff;
}

.booking-btn {
	width: 180px !important;
	padding: 8px 0;
	outline: none !important;
	border: 2px solid #fff;
	border-radius: 30px;
	background: transparent;
	color: #fff;
	margin-top: 20px;
	transition: all 0.3s ease;
}

.booking-btn:hover {
	transform: scale(1.1);
	box-shadow: 0 0 20px rgba(208, 206, 232, 0.15);;
}

.rows {
  margin-top: 20px;
  margin-bottom: 20px;
}

.rows h4 {
  font-size: 1.5rem;
  color: #333;
  margin-bottom: 20px;
}

.contact-btn {
  padding: 10px 20px;
  background-color: #dc3545;
  color: white;
  border: none;
  border-radius: 25px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.contact-btn:hover {
  background-color: #c82333;
  transform: scale(1.1);
}

.users-feedback {
	padding: 100px 0;
	margin-top: 0;
}

.users-feedback h1 {
	color: rgba(11, 4, 107, 0.929);
}

.user-review {
	text-align: center;
	box-shadow: 0 0 10px 0 rgba(0, 0, 100, 0.4);
	padding-bottom: 40px;
	height: 30vh;
}

.user-review p {
	padding: 40px 10px 10px 10px;
}

.users-feedback img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	position: relative;
	margin: -30px 0 20px 40%;
}

.user-review p::before {
	display: block;
	position: absolute;
	font-size: 100px;
	color: #6495ed;
	font-family: sans-serif;
	left: 44%;
	top: -20px;
}

.footer {
	padding: 100px 20px 15px;
	background-image: linear-gradient(#2d557d, #9610fb);
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: flex-end;
	flex-direction: column;
}

.footer-logo {
	width: 150px;
	margin-top: 15px;
	margin-bottom: 15px;
}

.footer h3 {
	text-align: left;
	margin-top: 15px;
	margin-bottom: 25px;
}

.footer p {
	font-size: 12px;
	text-align: justify;
	padding-right: 35px;
}

.footer a {
	font-size: 12px;
	text-align: justify;
	padding-right: 35px;
	color: white;
	text-decoration: none;
}

.footer .row .fa {
	padding-right: 20px;
	font-size: 15px;
}

.footer hr {
	margin-top: 10px;
	background: #efefef;
}

.footer .footer-text .copyright {
	text-align: center;
}

.footer .footer-text p {
	font-size: 16px;
	color: var(- -bg-black-900);
}
.footer-iconTop {
    float: right;
    padding-bottom: 20px;
}

.footer-iconTop a {
    position: relative;
    display: inline-block; /* Changed to inline-block for proper behavior */
    padding: 10px;
    background: #000000;
    border: 2px solid #ffffff; /* Changed to 'solid' from 'border' */
    border-radius: 50%;
    overflow: hidden;
    transition: background-color 0.3s, color 0.3s;
    text-decoration: none; /* Added to remove underline */
}

.footer-iconTop a i {
    font-size: 16px;
    color: #e5c2ff;
}

.footer-iconTop a:hover {
    background-color: #ffffff;
    color: #000000;
}


.highlight {
	border: 3px solid red;
	animation: blink 0.5s step-end infinite alternate;
	tranistion: box-shadow 1s ease;
	box-shadow: 0 0 0 3px #ffff99;
}

@
keyframes blink {
	from {opacity: 1;
}

to {
	opacity: 0;
}
}
</style>


<body>

	<section class="header">

		<div class="container">

			<img
				src="https://static.wixstatic.com/media/2f893f_8485abf42c324b11818c30307f1d0934~mv2.png/v1/crop/x_0,y_7,w_500,h_486/fill/w_303,h_294,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Bhraman%20logo.png">

			<a href="/login"><button type="button" class="login-btn">Login</button></a>

			<a href="/signup"><button type="button" class="signin-btn">Sign
					Up</button></a>

		</div>

		<h1>Travel Across North Bengal</h1>

		<p>Enjoy the serene beauty of Nature</p>

		<div class="input-group">

			<input type="text" name="Places" id="Places" class="form-control"
				placeholder="Search for Places">

			<div class="input-group-append">

				<button type="submit" class="input-group-text btn"
					onclick="searchPackage()">Search</button>

			</div>

		</div>

	</section>

	<section class="features">

		<h1>Featured Destinations</h1>

		<div class="container">

			<div class="row">

				<div class="col-md-4" id="darjeeling">

					<div class="feature-box">

						<div class="feature-img">

							<img src="https://wallpaperaccess.com/full/4136696.jpg"
								height="200vh">

							<div class="price">

								<p>3500 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Darjeeling</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>3 Days</span> <span><i
									class="fa fa-moon-o"></i>2 Nights</span>

							</div>

							<a href="/darjeeling" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="lepchajagat">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://nomadicweekends.com/blog/wp-content/uploads/2019/03/Way-to-Lolegaon-through-the-Misty-Pine-Trees.jpg">

							<div class="price">

								<p>2500 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Lepchajagat</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>2 Days</span> <span><i
									class="fa fa-moon-o"></i>1 Night</span>

							</div>

							<a href="/lepchajagat" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="kurseong">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://i.pinimg.com/originals/fc/c8/0e/fcc80e6649da2350a836ea4eb61fb091.png"
								height="200vh">

							<div class="price">

								<p>3000 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
									class="fa fa-star-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Kurseong</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>3 Days</span> <span><i
									class="fa fa-moon-o"></i>2 Nights</span>

							</div>

							<a href="/kurseong" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="pelling ravangla">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://voices.shortpedia.com/wp-content/uploads/2021/11/Pelling-1200x900@stayfari.jpg"
								height="200vh">

							<div class="price">

								<p>5000 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Pelling-Ravangla</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>3 Days</span> <span><i
									class="fa fa-moon-o"></i>2 Nights</span>

							</div>

							<a href="/pelling-ravangla" class="btn btn-primary">View
								Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="kalimpong">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://1.bp.blogspot.com/-m2TrKBSCNTc/X0PwygbmToI/AAAAAAABZIQ/HAQk9mL6GeYc_Jtp6RlSjPk-7ddViZPXQCLcBGAsYHQ/s1600/IMG_1798.JPG"
								height="200vh">

							<div class="price">

								<p>4000 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Kalimpong</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>2 Days</span> <span><i
									class="fa fa-moon-o"></i>1 Night</span>

							</div>

							<a href="/kalimpong" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="lava lolegaon">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://tse2.mm.bing.net/th/id/OIP.XOuUXXScrad-JeF3oR2ujwHaEK?rs=1&pid=ImgDetMain"
								height="200vh">

							<div class="price">

								<p>3800 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
									class="fa fa-star-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Lava-Lolegaon</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>3 Days</span> <span><i
									class="fa fa-moon-o"></i>2 Night</span>

							</div>

							<a href="/lava-lolegaon-rishap" class="btn btn-primary">View
								Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="north sikkim">

					<div class="feature-box">

						<div class="feature-img">

							<img src="https://i.ytimg.com/vi/9vvKYvB2e0c/maxresdefault.jpg"
								height="200vh">

							<div class="price">

								<p>8500 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>North Sikkim</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>4 Days</span> <span><i
									class="fa fa-moon-o"></i>3 Night</span>

							</div>

							<a href="/north-sikkim" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="doars">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://tse2.mm.bing.net/th/id/OIP.xDTN9IZ-xgTjzrsk_weShgHaFj?rs=1&pid=ImgDetMain"
								height="200vh">

							<div class="price">

								<p>5000 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
									class="fa fa-star-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Doars</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>4 Days</span> <span><i
									class="fa fa-moon-o"></i>3 Night</span>

							</div>

							<a href="/doars" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

				<div class="col-md-4" id="gangtok">

					<div class="feature-box">

						<div class="feature-img">

							<img
								src="https://www.twinklepatodiya.com/wp-content/uploads/2020/12/WhatsApp-Image-2020-12-16-at-2.57.36-PM-1.jpeg"
								height="200vh">

							<div class="price">

								<p>6500 INR</p>

							</div>

							<div class="rating">

								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>

							</div>

						</div>

						<div class="feature-details">

							<h4>Gangtok - Silk Route</h4>

							<div>

								<span><i class="fa fa-sun-o"></i>4 Days</span> <span><i
									class="fa fa-moon-o"></i>3 Nights</span>

							</div>

							<a href="/gangtok" class="btn btn-primary">View Itenary</a>

						</div>

					</div>

				</div>

			</div>

		</div>

	</section>

	<section class="gallery">

		<h1>Offbeat Destinations</h1>

		<div class="container">

			<div class="row">

				<div class="col-md-3">

					<div class="gallery-box">

						<img src="https://i.ytimg.com/vi/i2sMHZ8w3qs/maxresdefault.jpg">

						<h4>Ahaldara</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img src="https://www.darjeeling-tourism.com/darj_i000688.jpg">

						<h4>Bindu</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img
							src="https://mtgtravels.com/wp-content/uploads/2021/06/lechakhaimg.jpg">

						<h4>Lepchakha</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img
							src="https://www.trawell.in/admin/images/upload/770694583Lava_Main.jpg">

						<h4>Sittong</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img
							src="https://thelandofwanderlust.com/wp-content/uploads/2018/06/AF454041-D2BB-4C65-9342-5DE070A67A51.jpeg">

						<h4>Jhalong</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img
							src="https://ik.imagekit.io/shortpedia/Voices/wp-content/uploads/2021/10/samsing-1@mysticdooars.jpg">

						<h4>Samsing</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img
							src="https://northbengaltourism.com/images/offbeat/oodlabari_980.jpg">

						<h4>Odlabari</h4>

					</div>

				</div>

				<div class="col-md-3">

					<div class="gallery-box">

						<img
							src="https://www.team-bhp.com/forum/attachments/travelogues/1684488d1507723127t-tuv300-meghalaya-sojourn-81.jpg">

						<h4>Rocky Island</h4>

					</div>

				</div>

			</div>
			
			 <div class="rows">

              <h4> To Customize any packages or Book the above Travel Packages</h4>
  
              </div>

              <div class="col-md-4">

                  <a href="mailto:support@bhraman.com">

				  <button type="button" class="contact-btn">Contact Us</button>

				  </a>
			
			  </div>

		</div>

	</section>

	<section class="banner">

		<div class="banner-highlights">

			<div class="container">

				<div class="row">

					<div class="col-md-12">

						<h2>Discover Affordable and Customizable Travel Packages with
							Bhraman</h2>

						<p>At Bhraman, we offer pocket-friendly travel packages
							tailored to your preferred dates and hotels. Customize your
							experience with the help of our expert team, always ready to
							assist you. Join over 10,000 happy customers and become a proud
							member of the Bhraman family today.Enjoy flat 10% discount on all
							packages applicable for first time customers!</p>

					</div>

					<div class="col-md-4"></div>

					<a href="/login">

						<button type="button" class="booking-btn">Book Now</button>

					</a>

				</div>

			</div>

		</div>

	</section>

	<section class="users-feedback">

		<h1>Users Review</h1>

		<div class="container">

			<div class="row">

				<div class="col-md-4">

					<div class="user-review">

						<p>Nice website providing nice pocket-friendly packages,
							especially for the people of Bengal, I feel very proud.</p>

						<h6>Mamata Banerjee</h6>

					</div>

					<img
						src="https://indianewengland.com/wp-content/uploads/2016/01/Mamta-Banerjee.png">

				</div>

				<div class="col-md-4">

					<div class="user-review">

						<p>The whole team of Bhromon trying hard to help people
							witness the magic of North Bengal, its amazing.</p>

						<h6>Shah Rukh Khan</h6>

					</div>

					<img
						src="https://www.surfindia.com/celebrities/images/celebrities/shah-rukh-khan3.jpg">

				</div>

				<div class="col-md-4">

					<div class="user-review">

						<p>Really very good Tourism packages are being provided,
							anyone can now enjoy the beauty of North Bengal.</p>

						<h6>Sourav Ganguly</h6>

					</div>

					<img
						src="https://c.ndtvimg.com/2020-04/hl52tfp8_sourav-ganguly-afp_625x300_01_April_20.jpg">

				</div>

			</div>

		</div>

	</section>

	<footer class="footer">

		<div class="container">

			<div class="row">

				<div class="col-md-3">

					<img
						src="https://static.wixstatic.com/media/2f893f_8485abf42c324b11818c30307f1d0934~mv2.png/v1/crop/x_0,y_7,w_500,h_486/fill/w_303,h_294,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Bhraman%20logo.png"
						class="footer-logo" height="85px">

					<p>Bhromon is a newly opened Tourism Organization, which mainly
						is focussed on the serene beauty of North Bengal. We offer North
						Bengal Tour Packages for family, couples, Bachelor group, seniors
						and others at a very pocket friendly rate.</p>

				</div>

				<div class="col-md-3">

					<h3>Features</h3>

					<p>
						<a href="/about-us">About Us</a>
					</p>

					<p>
						<a href="/terms-and-conditions">Terms and Conditions</a>
					</p>

					<p>
						<a href="/cancellation-policy">Cancellation Policy</a>
					</p>

				</div>

				<div class="col-md-3">

					<h3>Quick Contact</h3>

					<p>
						<a href="tel:+919876543210"><i class="fa fa-phone-square"></i>
							+91 9876543210</a>
					</p>

					<p>
						<a href="mailto:support@bhraman.com"><i class="fa fa-envelope"></i>
							support@bhraman.com</a>
					</p>

					<p>
						<a
							href="https://www.google.com/maps?q=Kolkata,+West+Bengal,+700070"
							target="_blank"><i class="fa fa-home"></i> Kolkata, West
							Bengal</a>
					</p>

				</div>

				<div class="col-md-3">

					<h3>FollowUs on</h3>

					<p>
						<i class="fa fa-facebook-official"></i>Bhromon_Official
					</p>

					<p>
						<i class="fa fa-youtube-play"></i>Bhromon_Tourism
					</p>

					<p>
						<i class="fa fa-twitter"></i>Bhromon-Diaries
					</p>

				</div>

			</div>

			<hr>

			<div class="footer-text">

				<p class="copyright">
					<i><b>&copy; Bhromon by Snehasish Pradhan @2024 | All
							Rights Reserved.</b></i>
				</p>

			</div>

			<div class="footer-iconTop">
    		
    			<a href="#" id="scrollToTop"><i class="fa fa-arrow-up"></i></a>
			
			</div>


		</div>

	</footer>

	<script>
		function searchPackage() {

			var searchQuery = document.getElementById('Places').value
					.toLowerCase();

			var packages = document.querySelectorAll('.col-md-4');

			var found = false;

			packages.forEach(function(pkg) {

				var packageName = pkg.querySelector('h4').innerText
						.toLowerCase();

				if (packageName.includes(searchQuery)) {

					pkg.classList.add('highlight');

					pkg.scrollIntoView({
						behavior : 'smooth',
						block : 'center'
					});

					setTimeout(function() {

						pkg.classList.remove('highlight');

					}, 2000);

					found = true;

				}

			});

			if (!found) {

				alert("No package found");

			}

		}
	</script>

	 <script type="text/javascript">

    history.pushState(null, null, location.href);

    window.onpopstate = function () {

      history.go(0);

    };
    
    document.addEventListener('DOMContentLoaded', function() {
        var scrollToTopButton = document.getElementById('scrollToTop');

        // Scroll to top function
        scrollToTopButton.addEventListener('click', function(e) {
            e.preventDefault();
            window.scrollTo({
                top: 0,
                behavior: 'smooth' // Smooth scroll behavior
            });
        });
    });


  </script>

</body>

</html>