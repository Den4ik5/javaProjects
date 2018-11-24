<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--[if lt IE 7 ]><html class="ie ie6" lang="ru"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="ru"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="ru"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="ru"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Сраница ошибки 404</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <c:set var="context" value="${pageContext.request.contextPath}" />
    <link rel="stylesheet" href="${context}/view/error/404/css/style.css">

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>
<body>

<div class="myEdit">
    <div class="comingcontainer">
        <div class="checkbacksoon">

            <p class="error">

            <strong>Request from:</strong> ${pageContext.errorData.requestURI} <br>
            <strong>ServletName ot type:</strong>  ${pageContext.errorData.servletName}<br>
            <strong>StatusCode:</strong>  ${pageContext.errorData.statusCode}<br>
            <strong>Message:</strong>  ${pageContext.exception.message}<br>

            <strong>Exception:</strong>
                <c:forEach var="traceElement" items="${pageContext.errorData.throwable.stackTrace}">
                    <c:out value="${traceElement}"/>
                </c:forEach>


            <form action="" method="post" class="search">
                <input type="search" name="" placeholder="поиск" class="input" />
                <input type="submit" name="" value="" class="submit" />
            </form>

            <br><br><br><br><br><br>

            </p>


            <nav>
                <ul>
                    <li><a href="#">Главная</a></li>
                    <li><a href="#">О Сайте</a></li>
                    <li><a href="#">Контакты</a></li>
                    <li><a href="#">Блог</a></li>
                    <li><a href="#">Поддержка</a></li>
                </ul>
            </nav>

        </div>
    </div>
</div>

</body>
</html>