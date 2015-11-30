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
                    <div class="row">
                        <div class="col-md-12">
                        
                        <!-- 이곳은 메뉴라인 시작 -->
							<ul class="breadcrumb pull-left">
                                <li><a href="index.html">Home</a></li>
                                <li>그룹게시판</li>
                                <li>그룹소개</li>
                                <li>업로드</li>
                            </ul>
                        <!-- 이곳은 메뉴라인 끝 -->    
						
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <div class="row">
                                <div class="col-md-12">
									<tiles:insertAttribute name="boardlist" />
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-md-12">
<!--                                 	<div class="section-header"> -->
<!--                                         <h2>More From John Doe</h2> -->
<!--                                     </div> -->
                                    
                                    <div class="row">
                                    
                                    <!-- 뭐라해야하지 이건.. 메인 아래 이상한 부분시작 -->
<!--                                         <div class="col-md-4"> -->
<!--                                             <div class="item-ads-grid"> -->
<!--                                                 <div class="item-badge-grid featured-ads"> -->
<!--                                                     <a href="#">Featured Ads</a> -->
<!--                                                 </div> -->
<!--                                                 <div class="item-img-grid"> -->
<!--                                                     <img alt="" src="assets/img/products/product-1.jpg" class="img-responsive img-center"> -->
<!--                                                 </div> -->
<!--                                                 <div class="item-title"> -->
<!--                                                     <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a> -->
<!--                                                 </div> -->
<!--                                                 <div class="item-meta"> -->
<!--                                                     <ul> -->
<!--                                                         <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li> -->
<!--                                                         <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a> , <a href="category.html">Smartphone</a></li> -->
<!--                                                         <li class="item-location"><a href="category.html"><i class="fa fa-map-marker"></i> Manchester</a></li> -->
<!--                                                         <li class="item-type"><i class="fa fa-bookmark"></i> New</li> -->
<!--                                                     </ul> -->
<!--                                                 </div> -->
<!--                                                 <div class="product-footer"> -->
<!--                                                     <div class="item-price-grid pull-left"> -->
<!--                                                         <h3>$ 100</h3> -->
<!--                                                         <span>Negotiable</span> -->
<!--                                                     </div> -->
<!--                                                     <div class="item-action-grid pull-right"> -->
<!--                                                         <ul> -->
<!--                                                             <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li> -->
<!--                                                             <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li> -->
<!--                                                         </ul> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </div> -->
									<!--뭐라해야하지 이건.. 메인 아래 이상한 부분 끝 -->
                                       
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-4 col-sm-4">
							<tiles:insertAttribute name="right" />
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