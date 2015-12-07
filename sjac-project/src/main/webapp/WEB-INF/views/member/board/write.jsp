<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${initParam.root}boardtool/css/board.css" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
      $("#writeImg").click(function(){
         if($("#category").val()==""){
            alert("카테고리를 선택하세요!");
            return;
         }else if($("#title").val()==""){
            alert("제목을 입력하세요!");
            return;
         }else if($("#content").val()==""){
            alert("본문 내용을 입력하세요!");
            return;
         }
         $("#writeForm").submit();
      });
   });
</script>
<form action="auth_board_write.do" method="post" id="writeForm"  >
 <table class="inputForm" >
    <caption>글쓰기</caption>
    <tbody>
    <tr>
      <td>
      <c:choose>
      <c:when test="${sessionScope.mvo.id=='admin'}">
    <select name="category" id="category">
        <option value="">카테고리</option>
        <option value="공지">공지</option>
        <option value="일반글">일반글</option>
   </select>
   </c:when>
   <c:otherwise>
      일반글 <input type="hidden" name="category" id="category" value="일반글"></input>
   </c:otherwise>
   </c:choose>
   </td>
   </tr>
   <tr>
      <td>제목</td>
      <td><input type="text" name="title" id="title"></td>
    </tr>
    <tr>
      <td colspan=2><textarea cols="32" rows="10" name="content" id="content"></textarea></td>
    </tr>
    <tr>
       <td  colspan=2 >
          <img id="writeImg" src="${initParam.root}boardtool/img/write_btn.jpg"  />          
       </td>
    </tr>
    </tbody>
 </table> 
 </form>