<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <c:set var="context" value="${pageContext.request.contextPath}" />

    <%--<!-- CSS -->--%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">

    <link rel="stylesheet" href="${context}/css/footer/animate.css">
    <link rel="stylesheet" href="${context}/css/footer/style.css">
    <link rel="stylesheet" href="${context}/css/footer/media-queries.css">

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${context}/image/footer/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${context}/image/footer/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${context}/image/footer/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${context}/image/footer/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${context}/image/footer/ico/apple-touch-icon-57-precomposed.png">


</head>

<body>

<!-- Footer -->
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3 footer-about wow fadeInUp">
                    <img class="logo-footer" src="${context}/image/footer/footerLogo.png" alt="${context}/image/footer/footerLogo.png" data-at2x="${context}/image/footer/footerLogo.png">
                    <p>
                        We are open space for private announcements
                    </p>
                    <p><a href="https://vk.com/htmlgerasim">Our VK public</a></p>
                </div>
                <div class="col-md-4 col-lg-4 offset-lg-1 footer-contact wow fadeInDown">
                    <h3>Contact</h3>
                    <p><i class="fas fa-map-marker-alt"></i> Belarus, Minsk</p>
                    <p><i class="fas fa-phone"></i> Phone: +375 (25) 955-03-17</p>
                    <p><i class="fas fa-envelope"></i> Email: <a href="mailto:andrei.kozitsky@mail.ru">andrei.kozitsky@mail.ru</a></p>
                    <p><i class="fab fa-skype"></i> Skype: andrei.kozitsky00</p>
                </div>
                <div class="col-md-4 col-lg-4 footer-links wow fadeInUp">
                    <div class="row">
                        <div class="col">
                            <h3>Navigation</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p><a class="scroll-link" href="#top-content">Top</a></p>
                            <p><a class="scroll-link" href="#section-1">Section 1</a></p>
                            <p><a class="scroll-link" href="#section-2">Section 2</a></p>
                            <p><a class="scroll-link" href="#section-3">Section 3</a></p>
                        </div>
                        <div class="col-md-6">
                            <p><a class="scroll-link" href="#section-4">Section 4</a></p>
                            <p><a href="#">Affiliates</a></p>
                            <p><a href="#">Terms</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-6 footer-copyright">
                    &copy; Site was designed by <a href="https://vk.com/akozitsky">Andrei Kozitski</a>
                </div>
                <div class="col-md-6 footer-social">
                    <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
                    <a href="https://twitter.com/?lang=ru"><i class="fab fa-twitter"></i></a>
                    <a href="https://plus.google.com/discover?hl=ru"><i class="fab fa-google-plus-g"></i></a>
                    <a href="https://www.instagram.com/?hl=ru"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Javascript -->
<%--all visual--%>
<script src="${context}/js/footer/jquery-3.2.1.min.js"></script>
<%--animation of footer--%>
<script src="${context}/js/footer/jquery-migrate-3.0.0.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="${context}/js/footer/jquery.backstretch.min.js"></script>
<script src="${context}/js/footer/wow.min.js"></script>
<script src="${context}/js/footer/retina-1.1.0.min.js"></script>
<script src="${context}/js/footer/scripts.js"></script>

</body>

</html>