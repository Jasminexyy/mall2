<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Home</title>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--//meta tags ends here-->
    <!--booststrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //font-awesome icons -->
    <!--Shoping cart-->
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
    <!--//Shoping cart-->
    <!--stylesheets-->
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <link href="http://fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>

<body>
<!--headder-->
<div class="header-outs" id="home">
    <div class="header-bar">
        <div class="info-top-grid">
            <div class="info-contact-agile">
                <ul>
                    <li>
                        <span class="fas fa-phone-volume"></span>
                        <p>+(000)123 4565 32</p>
                    </li>
                    <li>
                        <span class="fas fa-envelope"></span>
                        <p>info@example1.com</p>
                    </li>
                    <li>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container-fluid">
            <div class="hedder-up row">
                <div class="col-lg-3 col-md-3 logo-head">
                    <h1><a class="navbar-brand" href="/showgoods.html">电子商城</a></h1>
                </div>
                <div class="col-lg-5 col-md-6 search-right">
                    <form class="form-inline my-lg-0" action="/showsearchgoods.html" method="post">
                        <input class="form-control mr-sm-2" type="search" placeholder="搜索" name="string">
                        <button class="btn" type="submit">搜索</button>
                    </form>
                </div>
                <div class="col-lg-4 col-md-3 right-side-cart">
                    <div class="cart-icons">
                        <ul>
                            <li>
                                <%--
                                                           <button type="button" data-toggle="modal" data-target="#exampleModal"> <span class="far fa-user"></span></button>
                                --%>
                                <button type="button" data-toggle="modal" data-target="#exampleModal" onclick="getinfo()"> <span class="far fa-user"></span></button>
                            </li>
                            <li class="toyscart toyscart2 cart cart box_1">
                                <a href="checkout.html"><span class="fas fa-cart-arrow-down"></span></a>
                            </li>
                            <li>
                                <a href="/history_orders.html"><span class="fas fa-history"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <%--<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
               <ul class="navbar-nav ">
                  <li class="nav-item active">
                     <a class="nav-link" href="/showgoods.html">首页<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                     <a href="about.html" class="nav-link">About</a>
                  </li>
                  <li class="nav-item">
                     <a href="service.html" class="nav-link">Service</a>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Pages
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="nav-link" href="icon.html">404 Page</a>
                        <a class="nav-link " href="typography.html">Typography</a>
                     </div>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Product
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="nav-link" href="product.html">Kids Toys</a>
                        <a class="nav-link " href="product.html">Dolls</a>
                        <a class="nav-link " href="product.html">Key Toys</a>
                        <a class="nav-link " href="product.html">Boys Toys</a>
                     </div>
                  </li>
                  <li class="nav-item">
                     <a href="contact.html" class="nav-link">Contact</a>
                  </li>
               </ul>
            </div>--%>
        </nav>
    </div>
</div>
<!--//headder-->
<!-- banner -->
<div class="inner_page-banner one-img" style="background: url('pictures/b7.jpg') repeat center;min-height: 200px;">
</div>
<!--//banner -->
<!--Typography-->
<section class="inner-pages py-5">
    <div class="container py-xl-5 py-sm-3">
        <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">修改个人信息</h3>
        <!-- forms -->
        <section class="typo-section py-4 border-top border-bottom">
            <h3 class="typo-main-heading mb-lg-4 mb-3 pr-3 pb-1">个人信息</h3>
            <h4 class="typo-sub-heading mb-3">必填</h4>
            <!--					<h4 class="typo-sub-heading mt-4 mb-3">Horizontal form</h4>-->
            <form action="domodifyuserinfo.html" method="post">
                <div class="form-group row">
                    <input type="hidden" value="${user.uid}" name="uid">
                    <label for="username" class="col-sm-2 col-form-label">用户名</label>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username" placeholder="${user.username}" onblur="checkrepeat(this.value)" value=${user.username}>
                        <div id="f"></div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="upassword" class="col-sm-2 col-form-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="upassword" name="upassword" value="${user.upassword}">
                    </div>
                    <label for="upassword" class="col-sm-2 col-form-label">确认密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="reupassword" name="reupassword" value="${user.upassword}" onblur="same(this.value)">
                        <div id="f1"></div>
                    </div>
                </div>
                <fieldset class="form-group">
                    <div class="row">
                        <div class="col-form-label col-sm-2 pt-0">性别</div>
                        <input type="hidden" name="ugender" id="ugender"/>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="male" value="男" onclick="changegender(this.value)">
                                <label class="form-check-label" for="male">
                                    男
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="female" value="女" onclick="changegender(this.value)">
                                <label class="form-check-label" for="female">
                                    女
                                </label>
                            </div>
                            <!--<div class="form-check disabled">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
                                <label class="form-check-label" for="gridRadios3">
                            Third disabled radio
                        </label>
                            </div>-->
                        </div>
                    </div>
                </fieldset>
                <div class="form-group row">
                    <label for="umobile" class="col-sm-2 col-form-label">联系号码</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="umobile" name="umobile" placeholder="${user.umobile}" value="${user.umobile}">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="uaddress" class="col-sm-2 col-form-label">地址</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="uaddress" name="uaddress" placeholder="${user.uaddress}" value="${user.uaddress}">
                    </div>
                </div>
                <div class="form-group row" id="first">
                    <label for="ubirthday" class="col-sm-2 col-form-label">出生年月</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" name="ubirthday" id="ubirthday">
                    </div>
                </div>
                <!--<div class="form-group row">
                    <div class="col-sm-2">Checkbox</div>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck1">
                            <label class="form-check-label" for="gridCheck1">
                        Example checkbox
                    </label>
                        </div>
                    </div>
                </div>-->
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn subscrib-btnn" id="handin">提交</button>
                    </div>
                </div>
            </form>
            <!--// form2 -->
        </section>
    </div>
</section>

<footer class="py-lg-4 py-md-3 py-sm-3 py-3 text-center">
    <div class="copy-agile-right">
        <p>
            Copyright &copy; 2019 sdcclub All rights reserved.
        </p>
    </div>
</footer>
<!-- //footer -->
<!-- Modal 1-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">个人信息</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="register-form">
                    <form action="#" method="post">
                        <div class="fields-grid">
                            <div  class="styled-input" >
                                <label class="col-sm-4 col-form-label" name="username" style="display: inline-block;">用户名</label>
                                <div id="infousername"style="display: inline-block;"></div>
                            </div>
                            <div class="styled-input" >
                                <label class="col-sm-4 col-form-label" name="gender"style="display: inline-block;">性别</label>
                                <div id="infogender"style="display: inline-block;"></div>
                            </div>
                            <div class="styled-input" >
                                <label class="col-sm-4 col-form-label" name="mobile"style="display: inline-block;">联系方式</label>
                                <div id="infomobile"style="display: inline-block;"></div>
                            </div>
                            <div class="styled-input" >
                                <label class="col-sm-4 col-form-label" name="address"style="display: inline-block;">收货地址</label>
                                <div id="infoaddress"style="display: inline-block;"style="display: inline-block;"></div>
                            </div>
                            <div class="styled-input">
                                <label class="col-sm-4 col-form-label" name="birthday"style="display: inline-block;">出生日期</label>
                                <div id="infobirthday"style="display: inline-block;"></div>
                            </div>
                            <!--                           <button type="submit" class="btn subscrib-btnn">Login</button>-->
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondarys" onclick="logout()">退出登录</button>
                <button type="button" class="btn btn-primary" onclick="modifyuserinfo()">修改</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- //Modal 1-->
        <!--js working-->
        <script src='js/jquery-2.2.3.min.js'></script>
        <!--//js working-->
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            toys.render();

            toys.cart.on('toys_checkout', function(evt) {
                var items, len, i;

                if(this.subtotal() > 0) {
                    items = this.items();

                    for(i = 0, len = items.length; i < len; i++) {}
                }
            });
        </script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                console.log("I'm in");
                var gender="${user.ugender}";
                $("#ugender").val(gender);
                if(gender=='男'){
                    var male=document.getElementById("male");
                    male.checked=true;
                }else{
                    var female=document.getElementById("female");
                    female.checked=true;
                }
                //var date=new Date(${user.ubirthday}).toLocaleString();
                var date=dateFormat("${user.ubirthday}","yyyy-MM-dd");
                console.log(date);
                $("#ubirthday").val(date);

                function dateFormat (date, format) {
                    date = new Date(date);
                    date.setHours(date.getHours()-14);
                    var o = {
                        'M+' : date.getMonth() + 1, //month
                        'd+' : date.getDate(), //day
                        'H+' : date.getHours(), //hour
                        'm+' : date.getMinutes(), //minute
                        's+' : date.getSeconds(), //second
                        'q+' : Math.floor((date.getMonth() + 3) / 3), //quarter
                        'S' : date.getMilliseconds() //millisecond
                    };

                    if (/(y+)/.test(format))
                        format = format.replace(RegExp.$1, (date.getFullYear() + '').substr(4 - RegExp.$1.length));

                    for (var k in o)
                        if (new RegExp('(' + k + ')').test(format))
                            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ('00' + o[k]).substr(('' + o[k]).length));

                    return format;
                }
            })

        </script>
        <!-- //cart-js -->
        <!-- start-smoth-scrolling -->
        <script src="js/move-top.js"></script>
        <script src="js/easing.js"></script>
        <script>
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 900);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <!-- here stars scrolling icon -->
        <script>
            $(document).ready(function() {

                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                };

                $().UItoTop({
                    easingType: 'easeOutQuart'
                });

            });
        </script>
        <!-- //here ends scrolling icon -->
        <!--bootstrap working-->
        <script src="js/bootstrap.min.js"></script>
        <!-- //bootstrap working-->
        <!-- //OnScroll-Number-Increase-JavaScript -->
        <!--
    作者：1907184421@qq.com
    时间：2019-07-12
    描述：检查用户名是否重复
-->
        <script type="text/javascript">
            function same(password) {
                var pass=password;
                var repass=$("#reupassword").val();
                $("#f1").empty();
                if(pass==repass){
                    $("#f1").append("<span class='fas fa-check-square' style='color: green;'></span>");
                    $("#handin").attr("disabled", false);
                }else{
                    $("#f1").append("<span class='fas fa-remove'style='color: red;'/>两次输入的密码不一致，请重新输入！");
                    $("#handin").attr("disabled", true);
                }
            }

            function checkrepeat(username) {
                var param = {
                    "username": username
                }
                if(username.length==0){
                    //当前姓名为空
                    $("#f").empty();
                    $("#f").append("<span class='fas fa-remove'style='color: red;'/>用户名不能为空");
                    $("#handin").attr("disabled",true);
                }else {
                    $.post("checkrepeat.html", param, function (data) {
                        $("#f").empty();
                        if (data == "true") {
                            $("#f").append("<span class='fas fa-check-square' style='color: green;'></span>");
                            $("#handin").attr("disabled", false);
                        } else {
                            $("#f").append("<span class='fas fa-remove'style='color: red;'/>用户名已被注册");
                            $("#handin").attr("disabled", true);
                        }
                    });
                }
            }
        </script>
        <!--
            作者：1907184421@qq.com
            时间：2019-07-12
            描述：更改性别
        -->
        <script type="text/javascript">
            function changegender(value){
                $("#ugender").val(value);
            }
        </script>
<script type="text/javascript">
    function getinfo() {
        $.post("getinfo.html", null, function (d) {
            var data = JSON.parse(d);
            var username=data.username;
            var gender=data.ugender;
            var mobile=data.umobile;
            var address=data.uaddress;
            var birthday=data.ubirthday;
            var date=new Date(birthday).toLocaleString();
            /*var year=date.getFullYear();
            var month=date.getMonth()+1;
            var day=date.getData();*/

            $("#infousername").empty();
            $("#infogender").empty();
            $("#infoaddress").empty();
            $("#infomobile").empty();
            $("#infobirthday").empty();

            $("#infousername").append("<label>" + username + "</label>");
            $("#infogender").append("<label>" + gender + "</label>");
            $("#infomobile").append("<label>" + mobile + "</label>");
            $("#infoaddress").append("<label>" + address + "</label>");
            //$("#infobirthday").append("<label>" + year+"-"+month+"-"+day+"</label>");
            $("#infobirthday").append("<label>" +date+"</label>");
        })

        Date.prototype.toLocaleString = function() {
            return this.getFullYear() + "/" + (this.getMonth() + 1) + "/" + this.getDate() ;
        };
    }

    function modifyuserinfo(){
        window.location.href="modifyuserinfo.html";
    }

    function logout(){
        window.location.href="logout.html";
    }
</script>
</body>

</html>