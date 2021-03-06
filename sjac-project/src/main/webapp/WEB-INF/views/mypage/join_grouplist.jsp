<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
   function popup(id){
      window.open("checkMyGroup.do?gLeaderId="+id, "popup",  "width=1000, height=700, left=200");
   }
</script> 
<script type="text/javascript">
$(document).ready(function(){
   $("#category").change(function(){
      if($("#category").val() == ""){
         $("#subject").empty();
         return false;
      }else{
         $.ajax({
            type:"get",
            url:"auth_mypage_subject_category.do",
            data:"category="+$(this).val(),
            success:function(list){
               var comp="<option value='전체'>소분류</option>";
               $.each( list, function(index, data){
                  comp += "<option value='"+data.subject+"'>" + data.subject + "</option>";
               })
               $("#subject").html(comp);
            }
         });
      }
      
      $.ajax({
         type:"get",
         url:"auth_mypage_getJoinGroupListByCategory.do",
         data:"category="+$(this).val(),
         success:function(list){
            var comp="";
            $("#grouplist").empty();
            $.each( list, function(index, data){
            comp += "<div class='col-sm-12' style='cursor:pointer' onclick=popup('" + data.memberVO.id +"')> <div class='item-ads1'> <div class='row'> <div class='col-sm-2 col-xs-3'><div class='item-img'>";
                comp += "<img src='"+data.subjectVO.categoryImg+"'></div></div>";
                comp += "<div class='col-sm-8 col-xs-6'><div class='item-title'>";
                comp += "<a href=''><h4>"+data.gName+"</h4></a>"; 
                comp += "</div>";
                comp += "<div class='item-meta'>";
                comp += "<ul>";
                comp += "<li class='item-date'><i class='fa fa-comment-o'></i> " + data.gInfo + "</li>";
                comp += "<li class='item-cat hidden-xs'><i class='fa fa-bars'></i> "+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                comp += "<li class='item-location hidden-xs'><i class='fa fa-map-marker'></i> " + data.gLocation + "</li>";
                comp += "<li class='item-type'><i class='fa fa-user'></i> " + "현재인원" + "/" + data.gCount + "</li>";
                comp += "</ul>";
                comp += "</div>";
                comp += "</div>";
                comp += "<div class='col-sm-2 col-xs-3'><div class='item-price'><h4>그룹장</h4>";
                comp += "<h3>"+ data.memberVO.id + "</h3>";
                comp += "</div>";
                comp += "<div class='item-action' id ='1'>";
                comp += "<ul>";
                comp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                comp+= "</ul></div></div>";
                comp+= "</div></div></div>";
         });
            $("#grouplist").html(comp);   
         }
      })
   });
   
   $("#subject").on("change", function(){
      $.ajax({
         type:"get",
         url:"auth_mypage_MyJoinGroupList_select.do",
         data:"subject="+$(this).val()+"&category="+$("#category").val(),
         success:function(sublist){
            var listComp ="";
            $("#grouplist").empty();

            $.each(sublist, function(index, data){
               listComp += "<div class='col-sm-12' style='cursor:pointer' onclick=popup('" + data.memberVO.id +"')> <div class='item-ads1'> <div class='row'> <div class='col-sm-2 col-xs-3'><div class='item-img'>";
               listComp += "<img src='"+data.subjectVO.categoryImg+"'></div></div>";
               listComp += "<div class='col-sm-8 col-xs-6'><div class='item-title'>";
               listComp += "<a href=''><h4>"+data.gName+"</h4></a>"; 
               listComp += "</div>";
               listComp += "<div class='item-meta'>";
               listComp += "<ul>";
               listComp += "<li class='item-date'><i class='fa fa-comment-o'></i> " + data.gInfo + "</li>";
               listComp += "<li class='item-cat hidden-xs'><i class='fa fa-bars'></i> "+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
               listComp += "<li class='item-location hidden-xs'><i class='fa fa-map-marker'></i> " + data.gLocation + "</li>";
               listComp += "<li class='item-type'><i class='fa fa-user'></i> " + "현재인원" + "/" + data.gCount + "</li>";
               listComp += "</ul>";
               listComp += "</div>";
               listComp += "</div>";
               listComp += "<div class='col-sm-2 col-xs-3'><div class='item-price'><h4>그룹장</h4>";
               listComp += "<h3>"+ data.memberVO.id + "</h3>";
               listComp += "</div>";
               listComp += "<div class='item-action' id ='1'>";
               listComp += "<ul>";
               listComp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
               listComp+= "</ul></div></div>";
               listComp+= "</div></div></div>";
            });
            
            $("#grouplist").html(listComp);
         }
      });
   });
});

</script>

 <div class="category-header no-margin-bottom">
                                <div class="row">
                                    <div class="col-md-4  cat-search-input">
                                       <select class="form-control" id="category">
                                           <option value="전체">전체</option>
                                            <option value="영어">영어</option>
                                            <option value="프로그래밍">프로그래밍</option>
                                            <option value="취업">취업</option>
                                            <option value="금융">금융</option>
                                        </select>
                                    </div>
                                
                                    <div class="col-md-4  cat-search-input">
                                        <select class="form-control" id= "subject">
                                      </select>   
                                    </div>
                                    <div class="col-md-4 text-right  cat-search-input">
                                        <div class="view-type">
                                            <a href="auth_mypage_join_grouplist.do"  data-toggle="tooltip" data-placement="top" title="List"><i class="fa fa-th-list"></i></a>
                                             <a href="auth_mypage_join_grouplist_grid.do"  data-toggle="tooltip" data-placement="top" title="Grid"><i class="fa fa-th"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

<div class="search-results-box">
   <div class="row">
      <div class="col-md-12 search-results">
         menu : <span>"내가 가입 요청한 그룹"</span> Results : <span>그룹개수</span>
         groups
      </div>
   </div>
</div>

<div class="list-results">
                                <div class="row" id="grouplist">
                                   <c:forEach items="${requestScope.joinList}" var="joinList">
                                    <div class="col-sm-12" style="cursor:pointer" onclick="popup('${joinList.memberVO.id}')">
                                    
                                    
                                        <div class="item-ads1">

                                            <div class="row">
         
                              
                                    <div class="col-sm-2 col-xs-3">
                                              
                                                <!-- 사진에 좌측상단에 대각선 끈모양 -->
                                              <!--       <div class="item-badge featured-ads">
                                                        <a href="#">Featured Ads</a>
                                                    </div> -->
                                    <!-- 사진에 좌측상단에 대각선 끈모양 -->
                                    <!-- 사진 -->
                                                    <div class="item-img">
                                                       <img alt="" src="${joinList.subjectVO.categoryImg}">
                                                    </div>
                                    <!-- 사진 -->
                                                </div>
                                                
                                                <!-- 그룹 정보 -->
                                                <div class="col-sm-8 col-xs-6">
                                                    <div class="item-title">
                                                       <h4>${joinList.gName}</h4>
                                                    </div>
                                                    <div class="item-meta">
                                                        <ul>
                                                            <li class="item-date"><i class="fa fa-comment-o"></i> ${joinList.gInfo }</li>
                                                            <li class="item-cat hidden-xs"><i class="fa fa-bars"></i> ${joinList.subjectVO.subjectCategory} , ${joinList.subjectVO.subject}</li>
                                                            <li class="item-location hidden-xs"><i class="fa fa-map-marker"></i> ${joinList.gLocation}</li>
                                                            <li class="item-type"><i class="fa fa-user"></i> 현재인원/${joinList.gCount }</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- 그룹정보 끝 -->
                                                
                                                <!-- 그룹 정보아래 이름, 아이디 드가는 곳 -->
                                                <div class="col-sm-2 col-xs-3">
                                                    <div class="item-price">
                                                       <h4> 그룹장</h4>
                                                        <h3>${joinList.memberVO.id}</h3>
                                                    </div>
                                                    <div class="item-action" id="1">
                                                        <ul>
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
 