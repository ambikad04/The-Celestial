<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <title>The Celestial</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  <link rel="stylesheet" href="style.css" >

  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />


</head>

<body>
<section class="head">
    <div class="container flex1">
      <div class="scoial">
        <i class="fab fa-facebook-f"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-instagram"></i>
        <i class="fab fa-youtube"></i>
      </div>
      <div class="address">
        <i class="fas fa-map-marker-alt"></i>
        <span>EM-4, EM Block, Sector V, Kolkata</span>
      </div>
    </div>
  </section>


<header class="header">
    <div class="container">
      <nav class="navbar flex1">
        <div class="logo">
          <img src="logo.png" alt="">
        </div>

        <ul class="nav-menu">
          <li> <a href="#home">Home</a> </li>
          <li> <a href="#about">About Us</a> </li>
          <li> <a href="#room">Room</a> </li>
          <li> <a href="#services">Services</a> </li>
          <li> <a href="#gallary">Gallary</a> </li>
          <li> <a href="http://localhost:8080/TIITAWEB/Feedback/feedback.jsp">Give Feedback</a> </li>
          <li> <a href="http://localhost:8080/TIITAWEB/ContactUs/contactus.jsp">Contact Us</a> </li>
          <li> <a href="http://localhost:8080/TIITAWEB/logout">Logout</a></li>

        </ul>
        <div class="hamburger">
          <span class="bar"></span>
          <span class="bar"></span>
          <span class="bar"></span>
        </div>

      </nav>
    </div>
  </header>
<script>
  const hamburger = document.querySelector(".hamburger");
  const navMenu = document.querySelector(".nav-menu");

  hamburger.addEventListener("click", mobliemmenu);

    function mobliemmenu() {
      hamburger.classList.toggle("active");
      navMenu.classList.toggle("active");
    }

    window.addEventListener("scroll", function() {
      var header = document.querySelector("header");
      header.classList.toggle("sticky", window.scrollY > 0)
    })
  </script>



<section class="home" id="home">
  <div class="container">
    <h1>Escape to paradise today</h1>
    <p>Experience Maldivian Paradise at Our Resort</p>

    <div class="content grid">
      <div class="box">
        <span>ARRIVAL DATE </span> <br>
        <input type="date" placeholder="29/20/2021">
      </div>
      <div class="box">
        <span>DEPARTURE DATE </span> <br>
        <input type="date" placeholder="29/20/2021">
      </div>
      <div class="box">
        <span>ADULTS</span> <br>
        <input type="number" placeholder="01">
      </div>
      <div class="box">
        <span>CHILDREN </span> <br>
        <input type="number" placeholder="01">
      </div>
      <div class="box">
        <button class="flex1">
            <span><a href="http://localhost:8080/TIITAWEB/StatPages/checknotify.html" class="link login-link">Check Availability</a></span>
          <i class="fas fa-arrow-circle-right"></i>
        </button>
      </div>
    </div>
  </div>
</section>



<section class="about top" id="about">
    <div class="container flex">
      <div class="left">
        <div class="img">
          <img src="a1.jpg" alt="" class="image1">
          <img src="a2.jpg" alt="" class="image2">
        </div>
      </div>
      <div class="right">
        <div class="heading">
          <h5>EXPLORE</h5>
          <h2>ABOUT US - The Celestial</h2>
          <p>The Celestial has been around in the hotel industry since 2021, and for 2 years we have continued to provide quality and surpassing service for our valued customers. The founders, Ms. Ambika Das, Ms. Riya Das, Ms. Sudipta Khalu, Ms. Shreya Parui, Ms. Sangita Mondal, and Ms. Suchismita Sarkar, are experienced in hotel management with a young professional mind beneficial for research and continuous development of The Celestial Hotel Resort.</p>
          <p> At our Maldives Resort, we invite you to escape the ordinary and embrace the extraordinary. Let the crystal-clear waters, swaying palm trees, and warm Maldivian hospitality enchant your senses. Immerse yourself in the magic of this island paradise and experience a holiday like no other. Come and find your paradise in the Maldives.</p>
        </div>
      </div>
    </div>
  </section>


<section class="wrapper top">
  <div class="container">
    <div class="text">
      <h2>Our Amenities</h2>
      <p>Explore at our resort with a pool,gym & yoga.Ultimate relaxation at the spa also boat tours.Surfing lessons or host meetings in conference room. Dive into adventure with diving, relax on your private beach.</p>
  <div class="content">
    <div class="box flex">
      <i class="fas fa-swimming-pool"></i>
      <span>Swimming pool</span>
    </div>
    <div class="box flex">
      <i class="fas fa-dumbbell"></i>
      <span>Gym & yoga</span>
    </div>
    <div class="box flex">
      <i class="fas fa-spa"></i>
      <span>Spa & massage</span>
    </div>
    <div class="box flex">
      <i class="fas fa-ship"></i>
      <span>Boat Tours</span>
    </div>
    <div class="box flex">
      <i class="fas fa-swimmer"></i>
      <span>Surfing Lessons</span>
    </div>
    <div class="box flex">
      <i class="fas fa-microphone"></i>
      <span>Conference room</span>
    </div>
    <div class="box flex">
      <i class="fas fa-water"></i>
      <span>Diving & smorking</span>
    </div>
    <div class="box flex">
      <i class="fas fa-umbrella-beach"></i>
      <span>Private Beach</span>
    </div>
  </div>
</div>
</div>
</section>



<section class="offer mtop" id="room">
  <div class="container">
    <div class="heading">
      <h5>EXCLUSIVE OFFERS </h5>
      <h3>You can get an exclusive offer </h3>
    </div>

    <div class="content grid2 mtop">
      <div class="box flex">
        <div class="left">
          <img src="o1.jpg" alt="">
        </div>
        <div class="right">
          <h4>Standard Room</h4>
          <div class="rate flex">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <p>Experience comfort redefined in our Standard Rooms. Thoughtfully designed for a cozy stay, these rooms provide essential amenities and a relaxing ambiance.</p>
          <h5>From ₹3999/night</h5>
          <button class="flex1">
            <span><a href="http://localhost:8080/TIITAWEB/Booking/booking.jsp">Book Now</a></span>
            <i class="fas fa-arrow-circle-right"></i>
          </button>
        </div>
      </div>
      <div class="box flex">
        <div class="left">
          <img src="o2.jpg" alt="">
        </div>
        <div class="right">
          <h4>Deluxe Room</h4>
          <div class="rate flex">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <p>Indulge in luxury at our Deluxe Rooms in the Maldives. Enjoy stunning ocean views, modern design, and a private terrace.</p>
          <h5>From ₹5999/night</h5>
          <button class="flex1">
            <span><a href="http://localhost:8080/TIITAWEB/Booking/booking.jsp">Book Now</a></span>
            <i class="fas fa-arrow-circle-right"></i>
          </button>
        </div>
      </div>
      <div class="box flex">
        <div class="left">
          <img src="o3.jpg" alt="">
        </div>
        <div class="right">
          <h4>Superior Rooms</h4>
          <div class="rate flex">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <p>Discover enhanced comfort in our Superior Rooms. Stylishly appointed with modern amenities, these rooms offer a heightened level of relaxation.</p>
          <h5>From ₹4999/night</h5>
          <button class="flex1">
            <span><a href="http://localhost:8080/TIITAWEB/Booking/booking.jsp">Book Now</a></span>
            <i class="fas fa-arrow-circle-right"></i>
          </button>
        </div>
      </div>
      <div class="box flex">
        <div class="left">
          <img src="o4.jpg" alt="">
        </div>
        <div class="right">
          <h4>Suite Room</h4>
          <div class="rate flex">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <p>Experience opulence in our Suite Rooms ? a perfect blend of elegance and comfort. Revel in spacious accommodations, stunning views, and exclusive amenities.</p>
          <h5>From ₹11999/night</h5>
          <button class="flex1">
            <span><a href="http://localhost:8080/TIITAWEB/Booking/booking.jsp">Book Now</a></span>
            <i class="fas fa-arrow-circle-right"></i>
          </button>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="gallary mtop " id="gallary">
  <div class="container">
    <div class="heading_top flex1">
      <div class="heading">
        <h5>WELCOME TO OUR PHOTO GALLERY</h5>
        <h2>Photo Gallery of Our Hotel</h2>
      </div>
      <div class="button">
        
      </div>
    </div>

    <div class="owl-carousel owl-theme">
      <div class="item">
        <img src="g1.jpg" alt="">
      </div>
      <div class="item">
        <img src="g2.jpg" alt="">
      </div>
      <div class="item">
        <img src="g3.jpg" alt="">
      </div>
      <div class="item">
        <img src="g4.jpg" alt="">
      </div>
      <div class="item">
        <img src="g5.jpg" alt="">
      </div>
      <div class="item">
        <img src="g6.jpg" alt="">
      </div>
      <div class="item">
        <img src="g7.jpg" alt="">
      </div>
      <div class="item">
        <img src="g8.jpg" alt="">
      </div>
    </div>

  </div>
</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous"
  referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"
  referrerpolicy="no-referrer"></script>
<script>
  $('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    dots: false,
    navText: ["<i class='fas fa-chevron-left'></i>", "<i class='fas fa-chevron-right'></i>"],
    responsive: {
      0: {
        items: 1
      },
      768: {
        items: 2
      },
      1000: {
        items: 4
      }
    }
  })
</script>


<section class="room wrapper2 top" id="services">
  <div class="container">
    <div class="heading">
      <h5>OUR ROOMS</h5>
      <h2>Fascinating rooms & suites </h2>
    </div>
    <div class="content flex mtop">
      <div class="left grid2">
        <div class="box">
          <i class="fas fa-desktop"></i>
          <p>Free Cost</p>
          <h3>No booking fee</h3>
        </div>
        <div class="box">
          <i class="fas fa-dollar-sign"></i>
          <p>Free Cost</p>
          <h3>Best rate guarantee</h3>
        </div>
        <div class="box">
          <i class="fab fa-resolving"></i>
          <p>Free Cost</p>
          <h3>Reservations 24/7</h3>
        </div>
        <div class="box">
          <i class="fal fa-alarm-clock"></i>
          <p>Free Cost</p>
          <h3>High-speed Wi-Fi</h3>
        </div>
        <div class="box">
          <i class="fas fa-mug-hot"></i>
          <p>Free Cost</p>
          <h3>Free breakfast</h3>
        </div>
        <div class="box">
          <i class="fas fa-user-tie"></i>
          <p>Free Cost</p>
          <h3>One person free</h3>
        </div>
      </div>
      <div class="right">
        <img src="r.jpg" alt="">
      </div>
    </div>
  </div>
</section>


<section class="customer top" id="testimonials">
    <div class="testimonials">
      <div class="inner">
        <h1>Testimonials</h1>
        <div class="border"></div>

        <div class="row">
          <div class="col">
            <div class="testimonial">
              <img src="c.jpg" alt="">
              <div class="name">Shreya Parui</div>
              <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>

              <p>"We had a wonderful stay at ur resort. The environment and the atmosphere helped us to relax. We had a very good stay."</p>
            </div>
          </div>

          <div class="col">
            <div class="testimonial">
              <img src="c2.jpg" alt="">
              <div class="name">Sudipta Khalu</div>
              <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
                <i class="far fa-star"></i>
              </div>

              <p>"Very very average food and ambience. Staff has no clue of their work. Operation was delayed beyond all logics."</p>
            </div>
          </div>

          <div class="col">
            <div class="testimonial">
              <img src="c3.jpg" alt="">
              <div class="name">Ambika Das</div>
              <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
              </div>

              <p>"Big and comfortable rooms.  bathroom was clean. Good environment. Good food, but a bit pricey. Overall very nice."</p>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</section>  

<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="footer-col">
        <h4>The Celestial</h4>
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">The Celestial is a leading online website for booking hotel .We offer great customer service along with luxurious comfort at a reasonable cost.</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Our Services</h4>
        <ul>
          <li><a href="#">Fascinating rooms & suites</a></li>
          <li><a href="#">No booking fee</a></li>
          <li><a href="#">Reservations 24/7</a></li>
          <li><a href="#">High-speed Wi-Fi</a></li>
          <li><a href="#">Free breakfast</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Contact Us</h4>
        <ul>
          <li><a href="mailto:theCelestial2nt3@gmail.com">Email Us</a></li>
          <li><a href="tel:+916290148329">Call Us</a></li>
          <li><a href="#">Visit Our Hotel</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Connect With Us</h4>
        <div class="social-links">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <span>&copy;2023 The Celestial: All Right Resrved.</span>
    </div>
  </div>
</footer>


</body>


</html>
