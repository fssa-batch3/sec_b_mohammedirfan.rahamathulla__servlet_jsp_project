
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
    <link rel="stylesheet" href="./assests/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>

</head>
<body>
    <div class="scroll-up-btn">
        <i class="fas fa-angle-up"></i>
    </div>
    <jsp:include page="header.jsp"></jsp:include>
    <section class="home" id="home">
        <div class="max-width">
            <div class="home-content">
                <div class="text-1">Hello</div>
                <div class="text-2">Welcome to Lovi Turf</div>
                 <a href="/turfweb/turfs">Book Now</a>
                 
            </div>
        </div>
    </section>
    
   
   <footer class="footer">
    <div class="container">
        <div class="footer-content">
            <div class="footer-logo">
                <img src="logo.png" alt="Logo">
            </div>
            <div class="footer-links">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-contact">
                <p>Email: mohammedirfan@gmail.com</p>
                <p>Phone: 8939470586</p>
            </div>
        </div>
        <div class="footer-social">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2023 Your Company. All Rights Reserved.</p>
    </div>
</footer>
   
   
   <style>
   .footer {
    background-color: #333;
    color: #fff;
    padding: 40px 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.footer-logo img {
    max-width: 100%;
    height: auto;
}

.footer-links ul {
    list-style: none;
    padding: 0;
}

.footer-links li {
    margin-bottom: 10px;
}

.footer-links a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
}

.footer-contact p {
    margin-bottom: 10px;
}

.footer-social a {
    color: #fff;
    text-decoration: none;
    margin-right: 10px;
    font-size: 20px;
}

.footer-bottom {
    text-align: center;
    margin-top: 20px;
}
   
   </style>
</body>
</html>