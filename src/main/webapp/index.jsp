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
   <%--  <nav class="navbar">
        <div class="max-width">
            <div class="logo"><a href="#">Lovi<span>Turf.</span></a></div>
            <ul class="menu">
                <li><a href="#home" class="menu-btn">Home</a></li>
                <li><a href="#about" class="menu-btn">About</a></li>
                <li><a href="<%=request.getContextPath() %>/user/new" class="menu-btn">Sign up</a></li>
                <li><a href="login.jsp" class="menu-btn">Login</a></li>
            </ul>
            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav> --%>

    <!-- home section start -->
    <section class="home" id="home">
        <div class="max-width">
            <div class="home-content">
                <div class="text-1">Hello</div>
                <div class="text-2">Welcome to Lovi Turf</div>
                 <a href="/turfweb/turfs">Book Now</a>
            </div>
        </div>
    </section>

    <!-- about section start -->
    <section class="about" id="about">
        <div class="max-width">
            <h2 class="title">About me</h2>
            <div class="about-content">
                <div class="column left">
                    <img src="https://e0.pxfuel.com/wallpapers/728/740/desktop-wallpaper-ground-dimensions-and-swing-will-be-biggest-factors-cricket-ground.jpg" alt="" wi>
                </div>
          
                <div class="column right">
                    <div class="text">An online turf booking app is a type of mobile application that allows users to reserve and pay for the use of sports fields or other outdoor facilities, such as soccer fields, baseball diamonds, or tennis courts.
                    </div>
                </div>
                </div>
                <!DOCTYPE html>
                <html lang="en">
                <head>
                  <title>Footer Design</title>
                  <meta charset="utf-8">
                  <meta name="viewport" content="width=device-width, initial-scale=1">
                  <link rel="stylesheet" href="css/style.css">
                  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
                </head>
                <body>
                
                  <footer class="footer">
                       <div class="container">
                           <div class="row">
                               <div class="footer-col">
                                   <h4>company</h4>
                                   <ul>
                                       <li><a href="#">about us</a></li>
                                       <li><a href="#">our services</a></li>
                                       <li><a href="#">privacy policy</a></li>
                                       <li><a href="#">affiliate program</a></li>
                                   </ul>
                               </div>
                               <div class="footer-col">
                                   <h4>get help</h4>
                                   <ul>
                                       <li><a href="#">FAQ</a></li>
                                   </ul>
                               </div>
                               <div class="footer-col">
                                   <h4>online turf</h4>
                                   <ul>
                                       <li><a href="#">watch</a></li>
                                   </ul>
                               </div>
                               <div class="footer-col">
                                   <h4>follow us</h4>
                                   <div class="social-links">
                                       <a href="#"><i class="fab fa-facebook-f"></i></a>
                                       <a href="#"><i class="fab fa-twitter"></i></a>
                                       <a href="#"><i class="fab fa-instagram"></i></a>
                                       <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                   </div>
                               </div>
                           </div>
                       </div>
                  </footer>
                
                </body>
                </html>
    <script>
        $(document).ready(function(){
    $(window).scroll(function(){
        // sticky navbar on scroll script
        if(this.scrollY > 20){
            $('.navbar').addClass("sticky");
        }else{
            $('.navbar').removeClass("sticky");
        }
        
        // scroll-up button show/hide script
        if(this.scrollY > 500){
            $('.scroll-up-btn').addClass("show");
        }else{
            $('.scroll-up-btn').removeClass("show");
        }
    });

    // slide-up script
    $('.scroll-up-btn').click(function(){
        $('html').animate({scrollTop: 0});
        // removing smooth scroll on slide-up button click
        $('html').css("scrollBehavior", "auto");
    });

    $('.navbar .menu li a').click(function(){
        // applying again smooth scroll on menu items click
        $('html').css("scrollBehavior", "smooth");
    });

    // toggle menu/navbar script
    $('.menu-btn').click(function(){
        $('.navbar .menu').toggleClass("active");
        $('.menu-btn i').toggleClass("active");
    });



    // owl carousel script
    $('.carousel').owlCarousel({
        margin: 20,
        loop: true,
        autoplay: true,
        autoplayTimeOut: 2000,
        autoplayHoverPause: true,
        responsive: {
            0:{
                items: 1,
                nav: false
            },
            600:{
                items: 2,
                nav: false
            },
            1000:{
                items: 3,
                nav: false
            }
        }
    });
});
    </script>
</body>
</html>