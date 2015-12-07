<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
 <html>  
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>Dlapak - General Listing Template</title>
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin" type="text/css" />
        <!-- Essential styles -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css" type="text/css"> 

        <!-- Dlapak styles -->
        <link id="theme_style" type="text/css" href="assets/css/style1.css" rel="stylesheet" media="screen">


        <!-- Favicon -->
        <link href="assets/img/favicon.png" rel="icon" type="image/png">

        <!-- Assets -->
        <link rel="stylesheet" href="assets/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="assets/plugins/owl-carousel/owl.theme.css">
        <link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css" type="text/css" media="screen" />

        <!-- JS Library -->
        <script src="assets/js/jquery.js"></script>

    </head>
    <body>
        <div class="wrapper">
            <header  class="navbar navbar-default navbar-fixed-top navbar-top">
				<tiles:insertAttribute name="header" />
            </header>
            <section class="main">
                <div class="container">
                    <div class="col-sm-5 login-form">
                            <div class="panel panel-default">
									<tiles:insertAttribute name="main" />
                            </div>
					</div>
                    
                </div>
            </section>
            <div class="footer">
                <tiles:insertAttribute name="footer" />
            </div>
        </div>

<!-- sendmessage 버튼 누르면 뜨는 신기한 폼 시작 -->
        <!-- Send Message Modal -->
<!--         <div aria-labelledby="sendMessageModalLabel" role="dialog" tabindex="-1" id="sendMessageModal" class="modal fade in"> -->
<!--             <div role="document" class="modal-dialog"> -->
<!--                 <div class="modal-content"> -->
<!--                     <div class="modal-header"> -->
<!--                         <button aria-label="Close" data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span></button> -->
<!--                         <h4 id="sendMessageModalLabel" class="modal-title">Send Message to Seller</h4> -->
<!--                     </div> -->
<!--                     <div class="modal-body"> -->
<!--                         <form> -->
<!--                             <div class="form-group"> -->
<!--                                 <label class="control-label">Name:</label> -->
<!--                                 <input type="text" class="form-control input-lg" placeholder="Your name" required> -->
<!--                             </div> -->
<!--                             <div class="form-group"> -->
<!--                                 <label class="control-label">Email:</label> -->
<!--                                 <input type="email" class="form-control input-lg" placeholder="Your email" required> -->
<!--                             </div> -->
<!--                             <div class="form-group"> -->
<!--                                 <label class="control-label" for="message-text">Message:</label> -->
<!--                                 <textarea id="message-text" class="form-control input-lg" placeholder="Your message" required></textarea> -->
<!--                             </div> -->
<!--                         </form> -->
<!--                     </div> -->
<!--                     <div class="modal-footer"> -->
<!--                         <button data-dismiss="modal" class="btn btn-default" type="button">Close</button> -->
<!--                         <button class="btn btn-custom" type="button"><i class="fa fa-paper-plane"></i> Send</button> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
        <!-- End Message Modal -->
<!-- sendmessage 버튼 누르면 뜨는 신기한 폼 끝 -->

        <!-- Essentials -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
        <script src="assets/plugins/counter/jquery.countTo.js"></script>
        <script defer src="assets/plugins/flexslider/jquery.flexslider.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {

                // ===============Flexslider=====================
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails",
                    directionNav: false,
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });

                // ==========tooltip initial=================
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </body>
</html> 