<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            var listComp="";
            $("#grouplist").empty();
            $.each(list, function(index, data){
               listComp += "<div class='col-md-4' style='cursor:pointer' onclick=popup('" + data.memberVO.id +"')>"; //닫1
            listComp += "<div class='item-ads-grid'>";      //닫2
            listComp += "<div class='item-img-grid'>";      
                listComp += "<img src='"+data.subjectVO.categoryImg+"' class='img-responsive img-center'></div>";
                listComp += "<div class='item-title'>";   
                listComp += "<h4>"+data.gName+"</h4></a>"; 
                listComp += "</div>";                     
                listComp += "<div class='item-meta'>";   
                listComp += "<ul>";
                listComp += "<li class='item-cat'><i class='fa fa-bars'></i> 분류 </li>"
                listComp += "<li class='item-cat'>" + data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                listComp += "</ul>";
                listComp += "<ul>";
                listComp += "<li class='item-location'><i class='fa fa-map-marker'></i> 지역</li>";
                listComp += "<li class='item-location'>" + data.gLocation + "</li>";
                listComp += "</ul>";
                listComp += "<ul>";
                listComp += "<li class='item-date'><i class='fa fa-user'></i> 인원</li>";
                listComp += "<li class='item-location'>" +  "현재인원" + "/" + data.gCount + "</li>";
                listComp += "</ul>";
                listComp += "<ul>";
                listComp += "<li class='item-type'><i class='fa fa-comment-o'></i> 소개</li><br>";
                listComp += "<li class='item-type'>" + data.gInfo+ "</li>";
                listComp += "</ul>";
                
//                 listComp += "<li class='item-date'>" + data.gInfo + "</li>";
//                 listComp += "<li class='item-cat'><i class='fa fa-bars'></i>"+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
//                 listComp += "<li class='item-location'><i class='fa fa-map-marker'></i>" + data.gLocation + "</li>";
//                 listComp += "<li class='item-type'>" + "현재인원" + "/" + data.gCount + "</li>";
//                 listComp += "</ul>";
                listComp += "</div>";   
                listComp += "<div class='product-footer'><div class='item-price-grid pull-left'>"; 
                listComp += "<h3> 그룹장 : "+ data.memberVO.id + "</h3>";
                listComp += "</div>";   //닫4
                listComp += "<div class='item-action-grid pull-right'>";
                listComp += "<ul>";
                listComp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                listComp+= "</ul></div>";   //닫3
                listComp+= "</div></div></div>";//닫1,2
            })
            $("#grouplist").html(listComp);   
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
               listComp += "<div class='col-md-4' style='cursor:pointer' onclick=popup('" + data.memberVO.id +"')>"; //닫1
            listComp += "<div class='item-ads-grid'>";      //닫2
            listComp += "<div class='item-img-grid'>";      
                listComp += "<img src='"+data.subjectVO.categoryImg+"' class='img-responsive img-center'></div>";
                listComp += "<div class='item-title'>";   
                listComp += "<h4>"+data.gName+"</h4></a>"; 
                listComp += "</div>";                     
                listComp += "<div class='item-meta'>";   
                listComp += "<ul>";
                listComp += "<li class='item-cat'><i class='fa fa-bars'></i> 분류 </li>"
                listComp += "<li class='item-cat'>" + data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
                listComp += "</ul>";
                listComp += "<ul>";
                listComp += "<li class='item-location'><i class='fa fa-map-marker'></i> 지역</li>";
                listComp += "<li class='item-location'>" + data.gLocation + "</li>";
                listComp += "</ul>";
                listComp += "<ul>";
                listComp += "<li class='item-date'><i class='fa fa-user'></i> 인원</li>";
                listComp += "<li class='item-location'>" +  "현재인원" + "/" + data.gCount + "</li>";
                listComp += "</ul>";
                listComp += "<ul>";
                listComp += "<li class='item-type'><i class='fa fa-comment-o'></i> 소개</li><br>";
                listComp += "<li class='item-type'>" + data.gInfo+ "</li>";
                listComp += "</ul>";
                
//                 listComp += "<li class='item-date'>" + data.gInfo + "</li>";
//                 listComp += "<li class='item-cat'><i class='fa fa-bars'></i>"+ data.subjectVO.subjectCategory + ", " + data.subjectVO.subject + "</li>";
//                 listComp += "<li class='item-location'><i class='fa fa-map-marker'></i>" + data.gLocation + "</li>";
//                 listComp += "<li class='item-type'>" + "현재인원" + "/" + data.gCount + "</li>";
//                 listComp += "</ul>";
                listComp += "</div>";   
                listComp += "<div class='product-footer'><div class='item-price-grid pull-left'>"; 
                listComp += "<h3> 그룹장 : "+ data.memberVO.id + "</h3>";
                listComp += "</div>";   //닫4
                listComp += "<div class='item-action-grid pull-right'>";
                listComp += "<ul>";
                listComp += "<li><a href='' data-toggle='tooltip' data-placement='top' title='Show Details' class='btn btn-success btn-sm'><i class='fa fa-eye'></i></a></li>";
                listComp+= "</ul></div>";   //닫3
                listComp+= "</div></div></div>";//닫1,2
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
                                    <div class="col-md-4" style="cursor:pointer" onclick="popup('${joinList.memberVO.id}')">
                                      <div class="item-ads-grid">
                                      
                                            <div class="item-img-grid">
                                                 <img alt="" src="${joinList.subjectVO.categoryImg}" class="img-responsive img-center">
                                            </div>
                                            <div class="item-title">
                                              <h4>${joinList.gName}</h4>
                                            </div>
                                            
                                            <div class="item-meta">
                        <ul>
                           <li class="item-cat"><i class="fa fa-bars"></i> 분류</li>
                           <li class="item-cat"> ${joinList.subjectVO.subjectCategory} ,${joinList.subjectVO.subject}</li>
                        </ul>

                        <ul>
                           <li class="item-location"><a href="category.html"><i
                                 class="fa fa-map-marker"></i> 지역</a></li>
                           <li class="item-location"><a href="category.html">${joinList.gLocation }</a></li>
                        </ul>

                        <ul>
                           <li class="item-date"><i class="fa fa-user"></i> 인원</li>
                           <li class="item-date">현재인원/${joinList.gCount }</li>
                        </ul>


                        <ul>
                           <li class="item-type"><i class="fa fa-comment-o"></i> 소개</li><br>
                           <li class="item-type">${joinList.gInfo }</li>
                        </ul>
                     </div>
                     
                                            <!-- 아이디 이름 드가는 곳 시작 -->
                                            <div class="product-footer">
                                                <div class="item-price-grid pull-left">
                                                    <h3>그룹장 : ${joinList.memberVO.id}</h3>
                                                </div>
                                                <div class="item-action-grid pull-right">
                                                    <ul>
                                                        <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            
                                            <!-- 아이디 이름 드가는 곳 끝 -->
                                        </div>
                                    </div>
                                    </c:forEach>
                                    </div>
                            </div>
  
                            