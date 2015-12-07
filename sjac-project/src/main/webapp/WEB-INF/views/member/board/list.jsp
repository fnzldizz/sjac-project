<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${initParam.root}jquery-1.11.3.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
      $("#showAnnounce").click(function(){
//          $("#table1").html("");
         $("#kk").empty();
      });
   });
</script>
<div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">자유 게시판</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="before-table">
                                        <div class="row">
                                           
                                         <input type="button" id="showAnnounce" value="공지글감추기">
                                        </div>
                                    </div>
                                    <table class="table table-bordered" style="text-align: center;">
                                        <thead>
                                            <tr bgcolor="#58b325"  style="font-weight: bold;">
                                    <!--             <th><input id="checkAll" type="checkbox" /></th> -->
                                                <td class="no">NO</td>
										        <td class="category">카테고리</td>
										        <td class="title">제목</td>
										        <td class="id">아이디</td>
										        <td class="myDate">작성일</td>
										        <td class="hits">HIT</td>
                                            </tr>
                                        </thead>
                                        <tbody id="kk">
                                        	 <c:forEach var="bvo" items="${requestScope.map['announcementList'] }">
                                        		   <tr bgcolor="#F6F6F6">
										             <td>${bvo.no }</td>   
										             <td>${bvo.category }</td>               
										            <%-- bvo에 relevel이 0이 아니면 답변글이므로 relevel만큼 공백으로 제목을 밀어준다  --%>
										            <td class="titleView">
                                                 	  <c:if test="${bvo.parent==0}">
										               <div class="deletedParent">[원글이 삭제된 답글]</div>
										               </c:if>
										               <c:if test="${bvo.relevel!=0}">
										               <c:forEach begin="0" end="${bvo.relevel}" step="1">&nbsp;&nbsp;</c:forEach>
										               <img src="${initParam.root }/boardtool/img/reply.jpg">
										               </c:if>
										               <a href="${initParam.root}/auth_board_show_content.do?no=${bvo.no }">${bvo.title}</a>
										          	   </td>      
                                                 <td>${bvo.memberVO.id }</td>
										         <td>${bvo.myDate }</td>
										         <td>${bvo.hits }</td>
										       </tr>
										     </c:forEach>
										   </tbody>
                                        <%--          </c:if>       --%>
         <c:forEach var="bvo" items="${requestScope.map['lvo'].list}">
         <tr>
             <td>${bvo.no }</td>   
             <td>${bvo.category }</td>               
            <%-- bvo에 relevel이 0이 아니면 답변글이므로 relevel만큼 공백으로 제목을 밀어준다  --%>
            <td class="titleView">
               <c:if test="${bvo.parent==0}">
               <div class="deletedParent">[원글이 삭제된 답글]</div>
               </c:if>
               <c:if test="${bvo.relevel!=0}">
               <c:forEach begin="0" end="${bvo.relevel}" step="1">&nbsp;&nbsp;</c:forEach>
               <img src="${initParam.root }/boardtool/img/reply.jpg">
               </c:if>
               <a href="${initParam.root}/auth_board_show_content.do?no=${bvo.no }">${bvo.title}</a>
            </td>               
            <td>${bvo.memberVO.id }</td>
            <td>${bvo.myDate }</td>
            <td>${bvo.hits }</td>
         </tr>         
         </c:forEach>
         </table><br>
          <a href="${initParam.root}auth_board_show_write.do"><img id="writeImg" src="${initParam.root }boardtool/img/write_btn.jpg" border="0"></a>
   <br></br>   
   <!-- 페이징 처리 -->      
   <br></br>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!-- 페이징 처리 -->   
   <%-- 이전 페이지 그룹이 있으면 이미지 보여준다.
         이미지 링크는 현 페이지 그룹 시작페이지 번호 -1 =>
         이전 페이지 그룹의 마지막 페이지 번호로 한다. 
    --%>
    <c:if test="${requestScope.map['lvo'].pagingBean.previousPageGroup}">
    <a href=
    "auth_board_list.do?pageNo=${requestScope.map['lvo'].pagingBean.
    startPageOfPageGroup-1}"><img src="${initParam.root }boardtool/img/left_arrow_btn.gif"></a>
    </c:if>
    &nbsp;&nbsp;
   <%-- PagingBean 을 이용해서 현재 페이지에 해당되는 페이지그룹의
         시작페이지~~마지막페이지까지 화면에 보여준다. 
         이 때 현재 페이지를 제외한 나머지 페이지는 링크를 걸어
         해당 페이지에 대한 게시물 리스트 조회가 가능하도록 한다. 
    --%>   
   <c:forEach var="i" 
   begin="${requestScope.map['lvo'].pagingBean.startPageOfPageGroup}"
    end="${requestScope.map['lvo'].pagingBean.endPageOfPageGroup}">
    <c:choose>
    <c:when test="${requestScope.map['lvo'].pagingBean.nowPage!=i}">
    <a href="auth_board_list.do?pageNo=${i}">${i}</a>
    </c:when>
    <c:otherwise>
   ${i}
   </c:otherwise>
   </c:choose>
   </c:forEach>    
   &nbsp;&nbsp;
   <%-- 다음 페이지 그룹이 있으면 화살표 이미지를 보여준다.
         이미지 링크는 현재 페이지 그룹의 마지막 번호 + 1 => 
         다음 그룹의 시작 페이지로 링크한다. 
         right_arrow_btn.gif
    --%>
    <c:if test="${requestScope.map['lvo'].pagingBean.nextPageGroup}">
    <a href=
    "auth_board_list.do?pageNo=${requestScope.map['lvo'].pagingBean.
    endPageOfPageGroup+1}">
    <img src="${initParam.root }boardtool/img/right_arrow_btn.gif">
    </a>
    </c:if>   
                                        
                                        
                                        <!--  paging  -->
                                  <!--       <div class="col-xs-9 text-right">
                                            <ul class="pagination table-pagination">
                                                <li><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li class="active"><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">5</a></li>
                                            </ul>
                                        </div> -->
                                        
                                    </div>                  
                                </div>
                    