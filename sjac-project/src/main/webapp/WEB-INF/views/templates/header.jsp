<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <li class="new-ads"><a href="account_create_post.html" class="btn btn-ads btn-block">Advertise</a></li>
                            <li><a href="member_register.do">회원가입</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong>&nbsp;Pages</a>
                                <ul class="dropdown-menu">
                                    <li><a href="home.do">메인화면</a></li>
                                    <li><a href="admin.do">관리자메인화면</a></li>
                                    
                                    
                                    <li><a href="member_find_group.do">그룹찾기화면</a></li>
                                    <li><a href="member_create_group.do">그룹생성</a></li>
                                    <li><a href="mypage_info.do">마이페이지</a></li>
                                    <li><a href="member_register.do">회원가입</a></li>
                                    <li><a href="member_login.do">로그인</a></li>
                                    
                                    
<!--                                     <li><a href="member_show_profile.do">내정보보여주기</a></li> -->
                                    
                                    
                                    <li><a href="board_list.do">자유게시판</a></li>
                                    <li><a href="board_write.do">글쓰기</a></li>
                                    <li><a href="board_update.do">글수정</a></li>
<!--                                     <li><a href="member_board_upload.do">파일업로드</a></li> -->
                                    <li><a href="board_show_content.do">글상세보기</a></li>
                                    
                                    
                                   
                                    
                                    
                                    <li><a href="mypage_update.do">마이페이지| 내정보수정</a></li>
                                    <li><a href="mypage_grouplist.do">마이페이지| 내 가입그룹</a></li>
									<li><a href="mypage_join_grouplist.do">마이페이지| 내 가입요청그룹</a></li>
                                    <li><a href="mypage_schedule.do">마이페이지| 내 스케줄</a></li>
                                    <li><a href="mypage_mycreating_group.do">마이페이지| 내가 만든 그룹</a></li>     
                                    
                                    
                                     <li><a href="group_member_home.do">그룹홈</a></li>
                                    
                                    <!-- 아직 안만듬 -->
									<li><a href="group_nonmember_home.do">비회원그룹홈</a></li>
									
									
                                    <li><a href="group_show_info.do">그룹정보보기</a></li>
                                    <li><a href="group_update_group.do">그룹수정</a></li>
                                    <li><a href="list_boardlist.do">그룹게시판</a></li>
                                    <li><a href="list_joinlist.do">그룹가입신청목록</a></li>
                                                                       
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user"></i> <strong class="caret"></strong>&nbsp;</a>
                                <div class="dropdown-menu dropdown-login" style="padding:15px;min-width:250px">
                                    <form>                       
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="fa fa-user"></i></span>
                                                <input type="text" placeholder="Username or email" required="required" class="form-control input-login">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="addon fa fa-lock"></i></span>
                                                <input type="password" placeholder="Password" required="required" class="form-control input-login">                                            
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
                                        <input type="submit" class="btn btn-custom btn-block" value="Sign In">
                                        <a href="forgot_password.html" class="btn-block text-center">Forgot password?</a>
                                    </form>                                    
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </header>
            <!-- 제일 꼭대기(헤더) 끝 -->