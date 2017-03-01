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
                    <a class="brand" href="${pageContext.request.contextPath}/main"><img src="../../img/choc-logo-2014.png"></a>
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
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">"My Kid" </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/logout">Log out</a></li>
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
        <img src="../../img/girl-doctor.jpg" align="right">

        <br>
        <br> <br>
        <p>
        <div class="title"><h2>Please, select the Doctor</h2></div>
        <br>
        <form action='' method="POST">
            <select name="doctor">
                <option value="1">Абрахамсон Джеймс Алан</option>
                <option value="2">Адамс Майкл Джеймс</option>
                <option value="3">Адамчук-Чалая Надежда Ивановна</option>
                <option value="4">Аимбетов Айдын Аканович</option>
                <option value="5">Аймаханов Мухтар Рабатович</option>
                <option value="6">Аксёнов Владимир Викторович</option>
                <option value="7">Александров Александр Павлович</option>
            </select>
            <br>
            <br>


            <div class="title"><h2>Please, select the Date</h2></div>
            <br>
            <select name="month">
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>

            <select name="day">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>

            </select>


            <div class="title"><h2>Please, select the Time</h2></div>
            <br>
            <select name="time">
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
            </select>
            <br> <br>
            <p><input type="submit" value="Отправить"></p>
        </form>
        <br>
        <br>

    </div>

    <hr>


    <hr>


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
                We have a staff of highly experienced doctors and nurses, who are ready to help at the first call, who
                can listen and hear and, finally, just to be around when it is most needed.
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
                                    <div
                                            class="social-info-back social-twitter-hover">
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

<!— Placed at the end of the document so the pages load faster —>
<script src="../../js/jquery.js" type="application/javascript"></script>
<script src="../../js/bootstrap.js" type="application/javascript"></script>
<script src="../../js/flexslider.js" type="application/javascript"></script>
<script src="../../js/carousel.js" type="application/javascript"></script>
<script src="../../js/custom.js" type="application/javascript"></script>


</body>
</html>