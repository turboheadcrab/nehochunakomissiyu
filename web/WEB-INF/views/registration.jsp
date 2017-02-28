<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>

    <meta charset="utf-8">
    <title>Republican Children's Clinical Hospital</title>
    <meta name="keywords" content="children, health, doctors, illness"/>
    <meta name="description"
          content="Here you can make an appointment with a doctor in Respublican Children's Clinical Hospital"/>

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
                    <a class="brand" href="${pageContext.request.contextPath}/main">
                        <img src="../../img/choc-logo-2014.png">
                    </a>
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
                            <li class="active"><a href="${pageContext.request.contextPath}/main">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/contacts">Contacts</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">"Make an Appointment - My
                                    Kid" </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/auth">Log in</a></li>
                                    <li><a href="${pageContext.request.contextPath}/registration">Register</a></li>
                                    <li><a href="${pageContext.request.contextPath}/home">Dashboard</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <form action='' id="login" method="post">
            <h1>Registration</h1>
            <img src="${pageContext.request.contextPath}/img/baby.jpg" width="600" height="611" align="right">
            <div id="inputs">
                <p>Enter Username</p>
                <input id="username" name="username" type="text" placeholder="vovan228" autofocus required>
                <p>Enter Last Name</p>
                <input id="last-name" name="last-name" type="text" placeholder="Ivanov" autofocus required>
                <p>Enter First Name</p>
                <input id="first-name" name="first-name" type="text" placeholder="Ivan" autofocus required>
                <p>Enter Patronymic</p>
                <input id="patronymic" name="patronymic" type="text" placeholder="Ivanovich" autofocus required>
                <p>Enter Health Insurance Number</p>
                <input id="health-insurance" name="health-insurance" type="text" placeholder="0000000000000000"
                       autofocus required>
                <p>Enter Password</p>
                <input id="password" name="password" type="password" placeholder="Password" required>
                <p>Repeat Password</p>
                <input id="password-repeat" name="password-repeat" placeholder="Password" required>
            </div>
            <br>
            <div id="actions">
                <input type="submit" id="submit" value="Register">
            </div>
        </form>
    </div>
    ${message}
</div>


<script src="../../js/jquery.js" type="application/javascript"></script>
<script src="../../js/bootstrap.js" type="application/javascript"></script>
<script src="../../js/flexslider.js" type="application/javascript"></script>
<script src="../../js/carousel.js" type="application/javascript"></script>
<script src="../../js/custom.js" type="application/javascript"></script>

</body>
</html>
