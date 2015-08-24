<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="resources/favicon.ico">
    <title>Ruby</title>
    <meta name="description" content="A free responsive HTML 5 template with a clean style.">
    <meta name="keywords" content="free template, html 5, responsive, clean, scss">
    <link rel="apple-touch-icon" href="resources/images/touch/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="resources/images/touch/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="resources/images/touch/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="144x144" href="resources/images/touch/apple-touch-icon-144x144.png">
    <meta property="og:title" content="">
    <meta property="og:description" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <link rel="stylesheet" href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="resources/css/form.css">
    <link rel="stylesheet" href="resources/css/scroller.css">
    <link rel="stylesheet" href="resources/css/style.css">

    <link rel="stylesheet" type="text/css" href="resources/css/normalize.css" />
   <!--  <link rel="stylesheet" type="text/css" href="resources/css/demo.css" /> --> 
    <link rel="stylesheet" type="text/css" href="resources/css/ns-default.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/ns-style-other.css" />
	<script src="resources/js/modernizr.custom.js"></script>
	
    <!--[if lt IE 9]>
        <script src="resources/js/html5.js"></script>
        <script src="resources/js/respond.js"></script>
    <![endif]-->
    
</head>
<body class="no-js">
    <div class="main">
        <%--<header>
            <div class="wrap">
                <!--<img src="resources/upload/placeit.jpg" height="532" width="252" alt="" class="header-img">-->
                <div class="header-wrapper">
                    <h1>Ruby <span>Assistant</span></h1>
                    <!--<p>With a smartphone and the right app, you can find any spot on TV or at theater. But the best app do a lot more. Try out my app.</p>-->
                    <p>Bạn muốn xem gì hôm nay? Với 1 chiếc smartphone và ứng dụng thích hợp, bạn có thể tìm kiếm xem mình có thể xem gì ngoài rạp hoặc trên truyền hình. Nhưng ứng dụng tốt nhất sẽ làm được  hơn rất nhiều. Hãy trải nghiệm ngay!</p>
                    <p class="autor"><a href="#">FTI Team</a></p>
                    <div class="buttons-wrapper">
                        <!-- <a href="itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/u/80802400/SpeakHere.plist" class="button">Download App</a> -->
                        <a href="itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/2ths36s04efuark/SpeakHere.plist" class="button">Download App</a>
                        <a href="#" class="button button-stripe">Learn more</a>
                    </div>
                </div>
            </div>
        </header>--%>


        <section class="" id="about">
            <div class="">
                <form class="cd-form floating-labels">
                    <!--<legend>Trải nghiệm ngay bằng cách đặt câu hỏi</legend>-->

                    <div class="info-message">
                        <p style="font-size: 120%;">Trải nghiệm sinh câu tự động từ 1 từ khoá</p>
                    </div>

                    <div id="recommend">
                        <div class="wrapper">
                            <div class="scene">
                                <div> <span id="vader"></span></div>
                            </div>
                        </div>
                    </div>

                    <div class="icon">
                        <!--<label class="cd-label" for="cd-name">Đặt câu hỏi</label>-->
                        <input class="user" type="text" name="keyword" id="keyword" placeholder="Gõ 1 từ" required
                               >
                    </div>

                    <div style="text-align: center">
                        <input class=" text-center" type="button" value="SINH CÂU" onclick="onGenerate()"/>

                    </div>

                </form>

                <div id="demo"  style="text-align: center; max-width: 600px;">
                    <div class="mCustomScrollbar content fluid light" data-mcs-theme="inset-2-dark">
                        <p id="result">
                            hello
                        </p>

                    </div>
                </div>

                <div id="loading" class="spinner hidden">
                    <div class="dot1"></div>
                    <div class="dot2"></div>
                </div>


            </div>
        </section>
    </div>
    <!-- /.main -->
    <footer>
        <div class="wrap">
            <p>&copy; 2014 <strong>FTI</strong>, All Rights Reserved</p>
        </div>
        <!-- /.wrap -->
    </footer>
    <script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript">
    function onGenerate() {
		var keyword = $("#keyword").val();
        console.log(keyword);
		$.ajax({
			type : "POST",
			url : "generator",
			contentType : "application/x-www-form-urlencoded;charset=UTF-8",
			data : "keyword=" + encodeURIComponent(keyword),
			success : function(result) {
                $("#result").html(result.name);
                $("#demo").removeClass("hidden");

			},
			error : function(result) {
                alert('error');
                $("#result").html(result.name);

				//alert("Error");
			}
		});
	};
    </script> 
</body>
</html>