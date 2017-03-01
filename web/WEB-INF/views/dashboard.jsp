<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>Republican Children's Clinical Hospital</title>
    <meta name="keywords" content="children, health, doctors, illness"/>
    <meta name="description"
          content="Here you can make an appointment with a doctor in Republican Children's Clinical Hospital"/>


    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">


</head>
<body>
<div id="wrapper">
    <div class="container">
        <header>
            <div class="row">

                <div class="logo span4">
                    <a class="brand" href="${pageContext.request.contextPath}/main"><img
                            src="../../img/choc-logo-2014.png"></a>
                </div>
            </div>
        </header>


        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li><a href="${pageContext.request.contextPath}/appointment">Make an Appointment</a></li>
                            <li><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="span8">
                <div id="about">
                    <div class="title"><h2>My Appointments</h2></div>

                    <table align="center">
                        <tr>
                            <th>My Appoinments</th>
                            <th>Actions</th>
                        </tr>

                        <tr>
                            <c:forEach items="${client.getAppointments()}" var="appointment">
                                <td>${appointment.getDoctor().getLastName()}</td>
                                <td>
                                    <p>
                                        <button>Delete</button>
                                        <button>Edit</button>
                                    </p>
                                </td>
                            </c:forEach>
                        </tr>
                    </table>
                </div>


                <div class="horizontal-line"></div>


                <div class="horizontal-line"></div>
            </div>

            <div class="span4">
                <div id="sidebar">
                    <div class="testimonial-container">
                        <div class="title"><h3>My Info</h3></div>
                        <div class="testimonials-carousel" data-autorotate="3000">
                            <ul class="carousel">
                                <li class="testimonial">
                                    <div class="testimonials">
                                        <ul>
                                            <li>Username: ${client.getUsername()}</li>
                                            <li>Last Name: ${client.getLastName()}</li>
                                            <li>First Name: ${client.getFirstName()}</li>
                                            <li>Patronymic: ${client.getPatronymic()}</li>
                                            <li>H.I. Number: ${client.getHealthInsurance()} ${message}</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div id="footer-menu" class="hidden-tablet hidden-phone">
            <div class="container">
                <div class="row">
                    <div class="span1">
                        <div id="footer-menu-back-to-top">
                            <a href="#"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="footer">
            <div class="span3">
                <h3>Thank You!</h3>
                <p>
                    Thank you for your choice! Thank you for trusting us the health of your children! The child, as a
                    patient is in need of special treatment, because children arethe future of our country.
                    We have a staff of highly experienced doctors and nurses, who are ready to help at the first call,
                    who can listen and hear and, finally, just to be around when it is most needed.
                </p>
            </div>
            <div class="container">
                <div class="span6">
                    <h3>Follow Us!</h3>
                    <ul class="social-grid">
                        <li>
                            <div class="social-item">
                                <div class="social-info-wrap">
                                    <div class="social-info">
                                        <div class="social-info-front social-twitter">
                                            <a href="http://twitter.com"></a>
                                        </div>
                                        <div class="social-info-back social-twitter-hover">
                                            <a href="http://twitter.com"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="social-item">
                                <div class="social-info-wrap">
                                    <div class="social-info">
                                        <div class="social-info-front social-facebook">
                                            <a href="http://facebook.com"></a>
                                        </div>
                                        <div class="social-info-back social-facebook-hover">
                                            <a href="http://facebook.com"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="social-item">
                                <div class="social-info-wrap">
                                    <div class="social-info">
                                        <div class="social-info-front social-dribbble">
                                            <a href="http://dribbble.com"></a>
                                        </div>
                                        <div class="social-info-back social-dribbble-hover">
                                            <a href="http://dribbble.com"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="social-item">
                                <div class="social-info-wrap">
                                    <div class="social-info">
                                        <div class="social-info-front social-flickr">
                                            <a href="http://flickr.com"></a>
                                        </div>
                                        <div class="social-info-back social-flickr-hover">
                                            <a href="http://flickr.com"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Placed at the end of the document so the pages load faster -->
<script src="../../js/jquery.js"></script>
<script src="../../js/bootstrap.js"></script>
<script src="../../js/flexslider.js"></script>
<script src="../../js/carousel.js"></script>
<script src="../../js/custom.js"></script>


</body>
</html>
