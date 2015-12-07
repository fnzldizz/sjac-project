<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

    <script type="text/javascript">
    <%-- 아이디 기억 체크 (더 해야함) --%>
  /*   $(document).ready(function(){
    	if($("#user_remember_me").prop("checked")){
    		$("#id").val(${sessionScope.mvo.id});
    	}  		
    	})
    }) */
    
    <%-- 로그인 실패시 alert (더 해야함) --%>
   /*  $(document).ready(function(){
    	$("#LoginBtn").submit(function(){
    		$.ajax({
    			type:"post",
    			url:"login.do",
    			data:$("#LoginForm").serialize(),
    			/* success: function(data){
    				if(data==null){
    					
    				}
    			} */
    		/* 	error:function(xhr, status, error){
    				alert("로그인 실패");
    			}
    		})
    	});
    }); */
   
    
    </script>
    
    
    
    
   <!-- 제일 꼭대기(헤더) 시작 -->
            <header class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="home.do" class="navbar-brand"><span class="logo">Job∩Study</span></a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                       <c:choose>
                       	<c:when test="${sessionScope.mvo != null}">
                       		 <li class="new-ads"><a href="auth_member_create_group.do" class="btn btn-ads btn-block">그룹생성</a>  </li>
                       		 <li><a href="member_find_group.do">그룹검색</a></li>
                       		 <li><a href="auth_board_list.do">자유게시판</a></li>
                       	<!-- 	 <li><a href="auth_mypage_info.do">마이페이지</a></li> -->
                       		 <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong>&nbsp;MyPage</a>
                                <ul class="dropdown-menu">
                                    <li><a href="auth_mypage_grouplist.do">내가 가입한 그룹</a></li>
                                    <li><a href="auth_mypage_join_grouplist.do">가입 요청한 그룹</a></li>
                                    <li><a href="group_member_home.do">내가 만든 그룹</a></li>
                                    
									<li><a href="auth_mypage_schedule.do">내 스케줄</a></li>
									
                                    <li><a href="auth_mypage_info.do">내 정보</a></li>
                                   
                                </ul>
                            </li>
                           <li class="dropdown">
                                <a class="dropdown-toggle" href="logout.do" ><i class="fa fa-user"></i> 로그아웃 &nbsp;</a>
                            </li> 
                       	</c:when>
                       	<c:otherwise>
                            <li><a href="member_register.do">회원가입</a></li>
                            <li><a href="member_find_group.do">그룹검색</a></li>
                            <li><a href="auth_board_list.do">자유게시판</a></li>
                           <!--  <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong>&nbsp;Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="home.do">메인화면</a></li>
                                    <li><a href="admin.do">관리자메인화면</a></li>
                                  
                                    <li><a href="group_member_home.do">그룹홈</a></li>
                                    
									<li><a href="group_nonmember_home.do">비회원그룹홈</a></li>
									
                                    <li><a href="group_show_info.do">그룹정보보기</a></li>
                                    <li><a href="group_update_group.do">그룹수정</a></li>
                                    <li><a href="list_boardlist.do">그룹게시판</a></li>
                                    <li><a href="list_joinlist.do">그룹가입신청목록</a></li>
                                </ul>
                            </li> -->
                            <!--  로그인  -->
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user"></i> 로그인<strong class="caret"></strong>&nbsp;</a>
                                <div class="dropdown-menu dropdown-login" style="padding:15px;min-width:250px">
                                    <form action="login.do" method="post" id="LoginForm">                       
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="fa fa-user"></i></span>
                                                <input type="text" placeholder="Id" required="required" class="form-control input-login" name="id" id="id">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="addon fa fa-lock"></i></span>
                                                <input type="password" placeholder="Password" required="required" class="form-control input-login" name="password">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label class="string optional" for="user_remember_me">
                                                    <input type="checkbox" id="user_remember_me" style="">
                                                    Remember me
                                                </label>
                                            </div>
                                        </div>
                                        <input type="submit" class="btn btn-custom btn-block" value="Login" id="LoginBtn">
                                        <a href="forgot_password.html" class="btn-block text-center">Forgot password?</a>
                                    </form>                                    
                                </div>
                            </li>
                       	</c:otherwise>
                       </c:choose>
                        </ul>
                    </div>
                </div>
            </header>
            <!-- 제일 꼭대기(헤더) 끝 -->