<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
function popup(id){
	window.open("group_member_home.do?gLeaderId="+id, "popup",  "width=1000, height=700, left=200");
}
</script>
 
 <!-- <div class="category-header no-margin-bottom">
                                <div class="row">
                                    <div class="col-md-4 text-right  cat-search-input">
                                        <div class="view-type">
                                            <a href="mypage_mycreating_group.do"  data-toggle="tooltip" data-placement="top" title="List"><i class="fa fa-th-list"></i></a>
                                             <a href="mypage_mycreating_group_grid.do"  data-toggle="tooltip" data-placement="top" title="Grid"><i class="fa fa-th"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div> -->

<div class="search-results-box">
	<div class="row">
		<div class="col-md-12 search-results">
			Keyword : <span>"내가 만든 그룹"</span> Results : <span>23.452</span>
			items
		</div>
	</div>
</div>

<div class="list-results">
                                <div class="row">
                                    <div class="col-md-4" style="cursor:pointer" onclick="popup('${requestScope.gvo.memberVO.id}')">
                                        <div class="item-ads-grid">
                                            
                                            <div class="item-img-grid">
                                                <img alt="" src="${requestScope.gvo.subjectVO.categoryImg}" class="img-responsive img-center">
                                            </div>
                                            <div class="item-title">
                                               <h4>${requestScope.gvo.gName}</h4>
                                            </div>
                                            <div class="item-meta">
                                                <ul>
                                                    <li class="item-date">${requestScope.gvo.gInfo }</li>
                                                    <li class="item-cat"><i class="fa fa-bars"></i> ${requestScope.gvo.subjectVO.subjectCategory} , ${requestScope.gvo.subjectVO.subject}</li>
                                                    <li class="item-location"><i class="fa fa-map-marker"></i> ${requestScope.gvo.gLocation }</li>
                                                    <li class="item-type">그룹에 참여한 인원 : ${requestScope.gvo.gCount }</li>
                                                </ul>
                                            </div>
                                            
                                            <!-- 아이디 이름 드가는 곳 시작 -->
                                            <div class="product-footer">
                                                <div class="item-price-grid pull-left">
                                                    <h3>$ 100</h3>
                                                    <span>Negotiable</span>
                                                </div>
                                                <div class="item-action-grid pull-right">
                                                    <ul>
                                                        <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                        <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            
                                            <!-- 아이디 이름 드가는 곳 끝 -->
                                        </div>
                                    </div>
                                    </div>
                            </div>
                            