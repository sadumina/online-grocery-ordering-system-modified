<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="utf-8">
			<meta content="width=device-width, initial-scale=1.0" name="viewport">
			<title>Products</title>
			<meta name="description" content="">
			<meta name="keywords" content="">

			<!-- Favicons -->
			<link href="assets/img/favicon.png" rel="icon">
			<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

			<!-- Fonts -->
			<!--<link href="https://fonts.googleapis.com" rel="preconnect">
            <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Amatic+SC:wght@400;700&display=swap" rel="stylesheet">
             -->
			<!-- Vendor CSS Files -->
			<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
			<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
			<link href="assets/vendor/aos/aos.css" rel="stylesheet">
			<link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
			<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

			<!-- Main CSS File -->
			<link href="assets/css/main.css" rel="stylesheet">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

		</head>

		<body class="product-view-page">
			<header id="header" class="header d-flex align-items-center sticky-top">
				<div class="container position-relative d-flex align-items-center justify-content-between">

					<a href="index.html" class="logo d-flex align-items-center me-auto me-xl-0">
						<!-- Uncomment the line below if you also wish to use an image logo -->
						<!-- <img src="assets/img/logo.png" alt=""> -->
						<h1 class="sitename">Shopping</h1>
						<span>.</span>
					</a>

					<nav id="navmenu" class="navmenu">
						<ul>
							<li><a href="index.html">Home<br></a></li>
							<li><a href="#about">About</a></li>
							<li><a href="viewproducts" class="active">Products</a></li>
							<li><a href="#contact">Contact</a></li>
							<li><a href="orderplacement.jsp">Place Order</a></li>
						</ul>
						<i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
					</nav> 
	               <a class="btn-icon" href="viewcart.jsp"><i class="fas fa-shopping-cart"></i></a>
				</div>
			</header>
			<section id="products" class="products section">
				<div class="product-container">
					<div class="catagories"><br><br>
						<h3>Categories</h3><br>
						<ul>
							<c:forEach var="category" items="${categories}">
								<li><a href="ViewProductServlet?category=${category}">${category}</a></li>
							</c:forEach>
						</ul>
					</div>
					<!-- Section Title -->
					<div class="tab-content" data-aos="fade-up" data-aos-delay="200">

						<div class="tab-pane fade active show" id="cosmetic"><br><br><br>

							<div class="tab-header text-center">
								<!--  <h3>Cosmetic & Body care</h3>-->
							</div>

							<div class="row gy-5">
								<!--<c:if test="${not empty prodDetails}">
                         <p>Product data available!</p>
                      </c:if>-->
								<c:forEach var="product" items="${prodDetails}">
									<div class="col-lg-4 menu-item">
										<a href="assets/img/producticon.png" class="glightbox"><img
												src="assets/img/producticon.png" class="menu-img img-fluid" alt=""></a>
										<br>
										<h4>${product.name}</h4>
										<p class="price">${product.price}</p>
										<div class="quantity-controls">
											<button class="decrement">-</button>
											<input type="text" value="1" class="quantity" id="quantity1" readonly>
											<button class="increment">+</button>
									</div><br>
									<a class="btn-addcart" href="">Add Cart</a><br><br>
							        </div>
							    </c:forEach>
							<c:if test="${empty prodDetails}">
								<p>No products found.</p>
							</c:if>
						</div>
					</div>
				</div>
				</div>
			</section>
			<footer id="footer" class="footer dark-background">

				<div class="container">
					<div class="row gy-3">
						<div class="col-lg-3 col-md-6 d-flex">
							<i class="bi bi-geo-alt icon"></i>
							<div class="address">
								<h4>Address</h4>
								<p>A108 Adam Street</p>
								<p>New York, NY 535022</p>
								<p></p>
							</div>

						</div>

						<div class="col-lg-3 col-md-6 d-flex">
							<i class="bi bi-telephone icon"></i>
							<div>
								<h4>Contact</h4>
								<p>
									<strong>Phone:</strong> <span>+1 5589 55488 55</span><br>
									<strong>Email:</strong> <span>info@example.com</span><br>
								</p>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 d-flex">
							<i class="bi bi-clock icon"></i>
							<div>
								<h4>Opening Hours</h4>
								<p>
									<strong>Mon-Sat:</strong> <span>11AM - 23PM</span><br>
									<strong>Sunday</strong>: <span>Closed</span>
								</p>
							</div>
						</div>

						<div class="col-lg-3 col-md-6">
							<h4>Follow Us</h4>
							<div class="social-links d-flex">
								<a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
								<a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
								<a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
								<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
							</div>
						</div>

					</div>
				</div>

				<div class="container copyright text-center mt-4">
					<p>© <span>Copyright</span> <strong class="px-1 sitename">Shopping</strong> <span>All Rights
							Reserved</span>
					</p>
					<div class="credits">
						<!-- All the links in the footer should remain intact. -->
						<!-- You can delete the links only if you've purchased the pro version. -->
						<!-- Licensing information: https://bootstrapmade.com/license/ -->
						<!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
					</div>
				</div>

			</footer>
			<!-- Scroll Top -->
			<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
					class="bi bi-arrow-up-short"></i></a>

			<!-- Vendor JS Files -->
			<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
			<script src="assets/vendor/php-email-form/validate.js"></script>
			<script src="assets/vendor/aos/aos.js"></script>
			<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
			<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
			<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

			<!-- Main JS File -->
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
			<script src="assets/js/cartpanel.js"></script>
			<script src="assets/js/quantitycounter.js"></script>
			<script src="assets/js/main.js"></script>
		</body>

		</html>