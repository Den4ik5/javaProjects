<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 08.11.2018
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <title>Dialogs</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />

</head>

<style>
    .myEdit{
        background: url(image/phone.jpg) top right no-repeat;
        height: 100%;

        -moz-background-size: 100%; /* Firefox 3.6+ */
        -webkit-background-size: 100%; /* Safari 3.1+ и Chrome 4.0+ */
        -o-background-size: 100%; /* Opera 9.6+ */
        background-size: 100%; /* Современные браузеры */
    }
</style>

<body style="font-family:Verdana">
    <div class="myEdit">
        <div class="container">
            <div class="row " style="padding-top:40px;">
                <br /><br />
                <div class="col-md-8">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Your Dialog with ...
                        </div>
                        <div class="panel-body">
                            <ul class="media-list">

                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle " src="assets/img/user.png" />
                                            </a>
                                            <div class="media-body" >
                                                Donec sit amet ligula enim. Duis vel condimentum massa.

                                                Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim.
                                                Duis vel condimentum massa.
                                                Donec sit amet ligula enim. Duis vel condimentum massa.
                                                <br />
                                                <small class="text-muted">Alex Deo | 23rd June at 5:00pm</small>
                                                <hr />
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle " src="assets/img/user.gif" />
                                            </a>
                                            <div class="media-body" >
                                                Donec sit amet ligula enim. Duis vel condimentum massa.

                                                Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim.
                                                Duis vel condimentum massa.
                                                Donec sit amet ligula enim. Duis vel condimentum massa.
                                                <br />
                                                <small class="text-muted">Jhon Rexa | 23rd June at 5:00pm</small>
                                                <hr />
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle " src="assets/img/user.png" />
                                            </a>
                                            <div class="media-body" >
                                                Donec sit amet ligula enim. Duis vel condimentum massa.

                                                Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim.
                                                Duis vel condimentum massa.
                                                Donec sit amet ligula enim. Duis vel condimentum massa.
                                                <br />
                                                <small class="text-muted">Alex Deo | 23rd June at 5:00pm</small>
                                                <hr />
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle " src="assets/img/user.gif" />
                                            </a>
                                            <div class="media-body" >
                                                Donec sit amet ligula enim. Duis vel condimentum massa.

                                                Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim.
                                                Duis vel condimentum massa.
                                                Donec sit amet ligula enim. Duis vel condimentum massa.
                                                <br />
                                                <small class="text-muted">Jhon Rexa | 23rd June at 5:00pm</small>
                                                <hr />
                                            </div>
                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-footer">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Message" />
                                <span class="input-group-btn">
                                        <button class="btn btn-info" type="button">SEND</button>
                                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            All chats
                        </div>
                        <div class="panel-body">
                            <ul class="media-list">

                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Alex Deo | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Jhon Rexa | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Alex Deo | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Jhon Rexa | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Alex Deo | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Jhon Rexa | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Alex Deo | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li class="media">

                                    <div class="media-body">

                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                            </a>
                                            <div class="media-body" >
                                                <h5>Jhon Rexa | User </h5>

                                                <small class="text-muted">Active From 3 hours</small>
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
    </div>
</body>
</html>
