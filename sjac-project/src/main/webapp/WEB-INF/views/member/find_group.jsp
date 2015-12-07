<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   
   //키워드 입력으로 검색(그룹명, 그룹장아이디) 시작!!!!!!!!!!!
   $("#keywordSelect").submit(function(event){
      var keyType=$("select[name=keywordType]").val();
      var keyText=$("input:text[name=keywordBlank]").val();
      
      // 전체 버튼 효과 초기화
      $("#selectAllGroup :input[name=subjectCategory]").attr('checked',false);
      
      //그룹장 아이디로 그룹검색 시작!!!!!!!!!!!!
      if(keyType=="memberVO.id"){//그룹장 아이디로 그룹검색
         //ajax 
         $.ajax({
            type:"GET",
            url:"findGroupByLeaderId.do",            
            data:"id="+keyText,
            dataType:"json",   
            success:function(data){
               if(data.flag!=null){
               $("#GroupListTable").html("");
               $("#GroupListTable").html("<div class='col-sm-12'>"+keyText+"와 일치하는 정보가 없습니다."+"</div>");
               }else{
                 var comp="";
                 comp += "<div class='col-sm-12' style='cursor:pointer' onclick='popup('" + data.memberVO.id +"')'> <div class='item-ads1'> <div class='row'> <div class='col-sm-2 col-xs-3'><div class='item-img'>";
                 comp += "<img src='"+data.subjectVO.categoryImg+"'></div></div>";
                 comp += "<div class='col-sm-8 col-xs-6'><div class='item-title'>";
                 comp += "<a href=''><h4>"+data.gName+"</h4></a>"; 
                 comp += "</div>";
                 comp += "<div class='item-meta'>";
                 comp += "<ul>";
                 comp += "<li class='item-date'>" + data.gInfo + "</li>";
                 comp += "<li class='item-cat hidden-xs'><i class='fa fa-bars'></i>"+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                 comp += "<li class='item-location hidden-xs'><i class='fa fa-map-marker'></i>" + data.gLocation + "</li>";
                 comp += "<li class='item-type'>" + "현재인원" + "/" + data.gCount + "</li>";
                 comp += "</ul>";
                 comp += "</div>";
                 comp += "</div>";
                 comp += "<div class='col-sm-2 col-xs-3'><div class='item-price'><h4>그룹장</h4>";
                 comp += "<h3>"+ data.memberVO.id + "</h3>";
                 comp += "</div>";
                 comp += "<div class='item-action' id ='1'>";
                 comp += "<ul><li><a href='#' data-toggle='tooltip' data-placement='top' title='Save Favorite' class='btn btn-default btn-sm'><i class='fa fa-heart'></i></a></li>";
                 comp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                 comp+= "</ul></div></div>";
                 comp+= "</div></div></div>";
                 /*     newInfo+="<tr>";
                     newInfo+="<td>"+r.subjectVO.subjectCategory +"</td><td>"+r.gName +"</td>";
                     newInfo+="<td>"+r.subjectVO.subject +"</td><td>"+r.gLocation+"</td>";
                     newInfo+="<td>"+r.gCount+"</td><td>"+r.gInfo+"</td>";
                     newInfo+="<td>"+r.memberVO.name+"</td>";
                     newInfo+="</tr>";
                     $("#GroupListTable").html(newInfo); */
                  // 전체 버튼 효과 복구
                     $("#selectAllGroup :input[name=subjectCategory]").attr('checked',true);
                 $("#GroupListTable").html(comp);   
               }
         }// success
           });//ajax    
         //그룹장 아이디로 그룹검색 끝!!!!!!!!!!!!
      }else{//검색옵션에 그룹 이름 포함검색 시작!!!!!!!!!!!
            $.ajax({
               type:"GET",
               url:"findGroupList.do",            
               data:"gName="+keyText+"&gLocation="+$("input:radio[name=location]:checked").val()+"&subjectVO.subject="+$("input:radio[name=subject]:checked").val()+"&subjectVO.subjectCategory="+$("input:radio[name=subjectCategory]:checked").val(),
               dataType:"json",   
               success:function(result){
                  if(result == ""){
                  $("#GroupListTable").html("");
                  $("#GroupListTable").html("<div class='col-sm-12'>"+keyText+"와 일치하는 정보가 없습니다."+"</div>");
               }
               else{
                     var listComp="";
                        $.each(result,function(index,data){
                            listComp += "<div class='col-sm-12' style='cursor:pointer' onclick='popup('" + data.memberVO.id +"')'> <div class='item-ads1'> <div class='row'> <div class='col-sm-2 col-xs-3'><div class='item-img'>";
                             listComp += "<img src='"+data.subjectVO.categoryImg+"'></div></div>";
                             listComp += "<div class='col-sm-8 col-xs-6'><div class='item-title'>";
                             listComp += "<a href=''><h4>"+data.gName+"</h4></a>"; 
                             listComp += "</div>";
                             listComp += "<div class='item-meta'>";
                             listComp += "<ul>";
                             listComp += "<li class='item-date'>" + data.gInfo + "</li>";
                             listComp += "<li class='item-cat hidden-xs'><i class='fa fa-bars'></i>"+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                             listComp += "<li class='item-location hidden-xs'><i class='fa fa-map-marker'></i>" + data.gLocation + "</li>";
                             listComp += "<li class='item-type'>" + "현재인원" + "/" + data.gCount + "</li>";
                             listComp += "</ul>";
                             listComp += "</div>";
                             listComp += "</div>";
                             listComp += "<div class='col-sm-2 col-xs-3'><div class='item-price'><h4>그룹장</h4>";
                             listComp += "<h3>"+ data.memberVO.id + "</h3>";
                             listComp += "</div>";
                             listComp += "<div class='item-action' id ='1'>";
                             listComp += "<ul><li><a href='#' data-toggle='tooltip' data-placement='top' title='Save Favorite' class='btn btn-default btn-sm'><i class='fa fa-heart'></i></a></li>";
                             listComp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                             listComp+= "</ul></div></div>";
                             listComp+= "</div></div></div>";
                           
                              /*   newInfo+="<tr>";
                               newInfo+="<td>"+sc.subjectVO.subjectCategory +"</td><td>"+sc.gName +"</td>";
                               newInfo+="<td>"+sc.subjectVO.subject +"</td><td>"+sc.gLocation+"</td>";
                               newInfo+="<td>"+sc.gCount+"</td><td>"+sc.gInfo+"</td>";
                               newInfo+="<td>"+sc.memberVO.name+"</td>";
                               newInfo+="</tr>"; */
                     });
                     $("#selectAllGroup :input[name=subjectCategory]").attr('checked',true);
                     $("#GroupListTable").html(listComp);
               }
                     /* $("#GroupListTable").text("라라라라라라라"); */
               }// success
              });//ajax    
      }// 그룹 이름으로 검색 끝!!!!!!!!!!!!!!!!
      
      
      event.preventDefault();//페이지 초기화 방지
   });//키워드 입력으로 검색(그룹명, 그룹장아이디)  끝!!!!!!!!!
//---------------------------------------------------------------------------------------------------------------------------
    //on subject 리스트 가져오기 시작!!!!!!!!
      $("#subjectTable,#categoryTable").on("click","td",function(){
         $(this).find('input:radio').attr('checked', true);
         var thisRadio=$(this).find('input:radio')
         if(thisRadio.val()=="전체"){
            $("input:radio[name=location]:checked").attr('checked', false);
            $("input:radio[name=subjectCategory]:checked").attr('checked', false);
               thisRadio.attr('checked', true);   
         }else{
            $("#selectAllGroup :input[name=subjectCategory]").attr('checked',false);//location 쪽 클릭시 전체버튼 초기화
         }
         
         
            
         
         
         
         $.ajax({
            type:"GET",
            url:"findGroupList.do",            
            data:"gLocation="+$("input:radio[name=location]:checked").val()+"&subjectVO.subject="+$("input:radio[name=subject]:checked").val()+"&subjectVO.subjectCategory="+$("input:radio[name=subjectCategory]:checked").val(),
            dataType:"json",   
            success:function(result){      
               
                  $("#GroupListTable").html("");
                  var listComp="";
                     $.each(result,function(index,data){
                        listComp += "<div class='col-sm-12' style='cursor:pointer' onclick='popup('" + data.memberVO.id +"')'> <div class='item-ads1'> <div class='row'> <div class='col-sm-2 col-xs-3'><div class='item-img'>";
                         listComp += "<img src='"+data.subjectVO.categoryImg+"'></div></div>";
                         listComp += "<div class='col-sm-8 col-xs-6'><div class='item-title'>";
                         listComp += "<a href=''><h4>"+data.gName+"</h4></a>"; 
                         listComp += "</div>";
                         listComp += "<div class='item-meta'>";
                         listComp += "<ul>";
                         listComp += "<li class='item-date'>" + data.gInfo + "</li>";
                         listComp += "<li class='item-cat hidden-xs'><i class='fa fa-bars'></i>"+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                         listComp += "<li class='item-location hidden-xs'><i class='fa fa-map-marker'></i>" + data.gLocation + "</li>";
                         listComp += "<li class='item-type'>" + "현재인원" + "/" + data.gCount + "</li>";
                         listComp += "</ul>";
                         listComp += "</div>";
                         listComp += "</div>";
                         listComp += "<div class='col-sm-2 col-xs-3'><div class='item-price'><h4>그룹장</h4>";
                         listComp += "<h3>"+ data.memberVO.id + "</h3>";
                         listComp += "</div>";
                         listComp += "<div class='item-action' id ='1'>";
                         listComp += "<ul><li><a href='#' data-toggle='tooltip' data-placement='top' title='Save Favorite' class='btn btn-default btn-sm'><i class='fa fa-heart'></i></a></li>";
                         listComp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                         listComp+= "</ul></div></div>";
                         listComp+= "</div></div></div>";  
                        
                        
                        /*    newInfo+="<tr>";
                            newInfo+="<td>"+sc.subjectVO.subjectCategory +"</td><td>"+sc.gName +"</td>";
                            newInfo+="<td>"+sc.subjectVO.subject +"</td><td>"+sc.gLocation+"</td>";
                            newInfo+="<td>"+sc.gCount+"</td><td>"+sc.gInfo+"</td>";
                            newInfo+="<td>"+sc.memberVO.name+"</td>";
                            newInfo+="</tr>"; */
                  });
                  $("#GroupListTable").html(listComp);
            }// success
           });//ajax    
      });//on 끝

//----------------------------------------------------------------------------------------------------------------------------------------
   // location 과 subjectCategory으로 GroupList 가져오기 시작!!!!!
   /* $("input:radio[name=location],input:radio[name=subjectCategory]").change(function(){ */
    $("#categoryTable td").click(function(){
      $(this).find('input:radio').attr('checked', true);
       
      //ajax 
      $.ajax({
         type:"GET",
         url:"findGroupList.do",            
         data:"gLocation="+$("input:radio[name=location]:checked").val()+"&subjectVO.subject="+$("input:radio[name=subject]:checked").val()+"&subjectVO.subjectCategory="+$("input:radio[name=subjectCategory]:checked").val(),
         dataType:"json",   
         success:function(result){      
               $("#GroupListTable").html("");
               var listComp="";
                  $.each(result,function(index,data){
                       listComp += "<div class='col-sm-12' style='cursor:pointer' onclick='popup('" + data.memberVO.id +"')'> <div class='item-ads1'> <div class='row'> <div class='col-sm-2 col-xs-3'><div class='item-img'>";
                         listComp += "<img src='"+data.subjectVO.categoryImg+"'></div></div>";
                         listComp += "<div class='col-sm-8 col-xs-6'><div class='item-title'>";
                         listComp += "<a href=''><h4>"+data.gName+"</h4></a>"; 
                         listComp += "</div>";
                         listComp += "<div class='item-meta'>";
                         listComp += "<ul>";
                         listComp += "<li class='item-date'>" + data.gInfo + "</li>";
                         listComp += "<li class='item-cat hidden-xs'><i class='fa fa-bars'></i>"+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                         listComp += "<li class='item-location hidden-xs'><i class='fa fa-map-marker'></i>" + data.gLocation + "</li>";
                         listComp += "<li class='item-type'>" + "현재인원" + "/" + data.gCount + "</li>";
                         listComp += "</ul>";
                         listComp += "</div>";
                         listComp += "</div>";
                         listComp += "<div class='col-sm-2 col-xs-3'><div class='item-price'><h4>그룹장</h4>";
                         listComp += "<h3>"+ data.memberVO.id + "</h3>";
                         listComp += "</div>";
                         listComp += "<div class='item-action' id ='1'>";
                         listComp += "<ul><li><a href='#' data-toggle='tooltip' data-placement='top' title='Save Favorite' class='btn btn-default btn-sm'><i class='fa fa-heart'></i></a></li>";
                         listComp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                         listComp+= "</ul></div></div>";
                         listComp+= "</div></div></div>";
                     
                     /*   newInfo+="<tr>";
                         newInfo+="<td>"+sc.subjectVO.subjectCategory +"</td><td>"+sc.gName +"</td>";
                         newInfo+="<td>"+sc.subjectVO.subject +"</td><td>"+sc.gLocation+"</td>";
                         newInfo+="<td>"+sc.gCount+"</td><td>"+sc.gInfo+"</td>";
                         newInfo+="<td>"+sc.memberVO.name+"</td>";
                         newInfo+="</tr>"; */
               });
               $("#GroupListTable").html(listComp);
               /* $("#GroupListTable").text("라라라라라라라"); */
         }// success
        });//ajax    
   });// location 과 subjectCategory으로 GroupList 가져오기 끝!!!!! */
   
   
   //-------------------------------------------------------------------------------------------------------------------
   //subjectCategory로 subject 테이블 만들기 시작!!!!!
   $("#categoryTable td").click(function(){
      $.ajax({
         type:"GET",
         url:"findSubjectBySubjectCategory.do",            
         data:"subjectCategory="+$("input:radio[name=subjectCategory]:checked").val(),
         dataType:"json",   
         success:function(result){
            
               var newInfo="";
                      newInfo+="<form id='subjectForm'>";
                         newInfo+="<tr>";
                  $.each(result,function(index,sc){
                      newInfo+="<td>"+"<input type='radio' name='subject' value='"+sc.subject+"'>"+sc.subject+"</td>";
               });
                      newInfo+="</tr>";
                      newInfo+="</form>";
               $("#subjectTable tbody").html(newInfo);
         }// success
         //on subject선택
        });//ajax   
   });//subjectCategory로 subject 테이블 만들기 끝!!!!!
   //-------------------------------------------------------------------------------------------------------------------
   
   
   
   
   
      
   });//레뒤 끝
</script>
      <!-- 검색 키워드 입력 -->
      <h3>키워드 검색</h3>
      <hr>
      <div id="keyword">
         <table class="table table-striped table-bordered table-hover" border="1" cellpadding="10" id="selectKeywordTable">
         <form id="keywordSelect">
         <tr>
         <td>
             <select name="keywordType" form="keywordSelect">
              <option value="gName">그룹명</option>
              <option value="memberVO.id">그룹장아이디</option>
         </select>
             <input type="text" name="keywordBlank">
             <input type="submit" value="검색">
         </td>
         </tr>
         </form>
         </table>
      </div>
      <br>
         <!--  분야 선택 테이블-->
         <h3>스터디그룹 검색</h3>
         <hr>
         <div id="category">
               <table class="table table-striped table-bordered table-hover" border="1" cellpadding="10" id="categoryTable">
               <tbody>
               <form id="locationForm">
               <tr>
                  <td bgcolor="pink">지역</td>
                  <td><input type="radio" name="location" value="강원">강원</td>
                   <td><input type="radio" name="location" value="경기">경기</td>
                    <td><input type="radio" name="location" value="경남">경남</td> 
                    <td><input type="radio" name="location" value="경북">경북</td> 
                    <td><input type="radio" name="location" value="광주">광주</td>
               </tr>
               
               <tr>
                     <td><input type="radio" name="location" value="대구">대구</td> 
                     <td><input type="radio" name="location" value="대전">대전</td>
                   <td><input type="radio" name="location" value="부산">부산</td>
                   <td><input type="radio" name="location" value="서울">서울</td>
                   <td><input type="radio" name="location" value="세종">세종</td>
                  <td><input type="radio" name="location" value="울산">울산</td>
               </tr>
               
               <tr>
                   <td><input type="radio" name="location" value="인천">인천</td>
                    <td><input type="radio" name="location" value="전남">전남</td> 
                    <td><input type="radio" name="location" value="전북">전북</td>
                     <td><input type="radio" name="location" value="제주">제주</td>
                   <td><input type="radio" name="location" value="충남">충남</td> 
                   <td><input type="radio" name="location" value="충북">충북</td> 
               </tr>
               </form>
               
               <form id="subjectCategoryForm">
               <tr>
                <td bgcolor="green">분류</td>
                <td id="subjectCategory"><input type="radio" name="subjectCategory" value="영어">영어</td>
                <td id="subjectCategory"><input type="radio" name="subjectCategory" value="프로그래밍">프로그래밍</td> 
                <td id="subjectCategory"><input type="radio" name="subjectCategory" value="취업">취업</td> 
                <td id="subjectCategory"><input type="radio" name="subjectCategory" value="금융">금융</td>
                 <td id="selectAllGroup"><input type="radio" name="subjectCategory" value="전체" id="all">전체
               </tr>
               </form>
               </tbody>
               </table>
            </div>
            <div id="subject"><table id="subjectTable" border="1" class="table table-striped table-bordered table-hover"><tbody></tbody></table></div>
            
            <hr>
            <hr>
      <!-- 정보 -->
            <h3>그룹정보</h3>
          <hr>
            <div id="groupList" class="list-results">  
               <div id="GroupListTable" class="row">
                <c:forEach items="${requestScope.gvo}" begin="0" end="12" var="gvo">
                 <div class="col-sm-12" <%-- style="cursor:pointer" onclick="popup('${groupList.memberVO.id}')" --%>>
                      <div class="item-ads1">
                               <div class="row">
                                    <div class="col-sm-2 col-xs-3">
                                             <div class="item-img">
                                                   <img alt="" src="${gvo.subjectVO.categoryImg}">
                                                    </div>
                                                </div>
                                                
                                                <!-- 그룹 정보 -->
                                                <div class="col-sm-8 col-xs-6">
                                                    <div class="item-title">
                                                       <h4>${gvo.gName}</h4>
                                                    </div>
                                                    <div class="item-meta">
                                                        <ul>
                                                            <li class="item-date">${gvo.gInfo }</li>
                                                            <li class="item-cat hidden-xs"><i class="fa fa-bars"></i> ${gvo.subjectVO.subjectCategory} , ${gvo.subjectVO.subject}</li>
                                                            <li class="item-location hidden-xs"><i class="fa fa-map-marker"></i>${gvo.gLocation}</li>
                                                            <li class="item-type">현재인원/${gvo.gCount }</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- 그룹정보 끝 -->
                                                
                                                <!-- 그룹 정보아래 이름, 아이디 드가는 곳 -->
                                                <div class="col-sm-2 col-xs-3">
                                                    <div class="item-price">
                                                       <h4> 그룹장</h4>
                                                        <h3>${gvo.memberVO.id}</h3>
                                                    </div>
                                                    <div class="item-action" id="1">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                 <!-- 그룹 정보아래 이름, 아이디 드가는 곳 -->
                                                
                                
         
                                          
                                            </div>   
                                        </div>
                                        
                                      
                                    </div>
                </c:forEach>
                </div>
                </div>
          <%--      <table id="GroupListTable" class=table border="1" cellpadding="1">
               <thead>
               <tr>
               <th>대분류</th><th>그룹이름</th><th>소분류</th><th>지역</th>
               <th>인원</th><th>소개</th><th>그룹장이름(그룹장아이디)</th>
               </tr>
               </thead>   
               <tbody id="groupListTD">
               <c:forEach items="${requestScope.gvo}" begin="0" end="12" var="gvo">
                  <tr>
               <td>${gvo.subjectVO.subjectCategory }</td><td>${gvo.gName }</td>
               <td>${gvo.subjectVO.subject }</td><td>${gvo.gLocation}</td>
               <td>${gvo.gCount}</td><td>${gvo.gInfo}</td>
               <td>${gvo.memberVO.name}(${gvo.memberVO.id})</td>
               </tr>
               </c:forEach>
               </tbody>
               </table>
               </div> --%>
            <!-- //정보 -->