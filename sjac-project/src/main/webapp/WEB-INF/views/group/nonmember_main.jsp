<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="post">
	<div class="post-title1">
		<h2><center><< ${requestScope.groupInfo.gName} >></center></h2>
	</div>
	
	
	<div class="flexslider post-images"> 
	<!--  슬라이드 기능  -->
	<!-- 	<ul class="slides"> -->
	
			<img alt="" src="${requestScope.groupInfo.subjectVO.categoryImg}"  style="width: 100%"/>

	</div>
	
	<div class="post-meta1">
		<ul>
			<li>분야 : ${requestScope.groupInfo.subjectVO.subjectCategory}</li>
			<li>과목 : ${requestScope.groupInfo.subjectVO.subject}</li> 
			<li>지역 : ${requestScope.groupInfo.gLocation }</li>
			<li>모집인원수 : ${requestScope.groupInfo.gCount}</li>
			<li>${requestScope.groupInfo.gInfo}</li> 
		</ul>
	</div>
	
	<div class="post-footer">
		<div class="row">
			<div class="col-xs-6">
				<!-- <button class="btn btn-info">
					<i class="fa fa-whatsapp"></i> <span class="hidden-xs hidden-sm">0823
						4223 4234</span>
				</button> -->
				<div class="post-meta2">
					그룹장 : ${requestScope.groupInfo.memberVO.id}
				</div>
				
			</div>
			<div class="col-xs-6">
				<div class="item-action pull-right">
				<button class="btn btn-warning" data-target="#sendMessageModal"
					data-toggle="modal">
					<i class="fa fa-envelope"></i> <span class="hidden-xs hidden-sm">가입신청</span>
				</button>
				<br>
					<ul>
						<li><a href="#" data-toggle="tooltip" data-placement="top"
							title="Save Favorite" class="btn btn-success btn"><i
								class="fa fa-heart"></i></a></li>
						<li><a href="#" data-toggle="tooltip" data-placement="top"
							title="Show Details" class="btn btn-info btn"><i
								class="fa fa-share-alt"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- sendmessage 버튼 누르면 뜨는 신기한 폼 시작 -->
        <!-- Send Message Modal -->
        <div aria-labelledby="sendMessageModalLabel" role="dialog" tabindex="-1" id="sendMessageModal" class="modal fade in">
            <div role="document" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-label="Close" data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span></button>
                        <h4 id="sendMessageModalLabel" class="modal-title">가입 신청</h4>
                    </div>
                    <div class="modal-body">
                        <form action="joinGroup.do<%-- ?gLeaderId=${requestScope.groupInfo.memberVO.id} --%>">
                        	<input type="hidden" name="groupVO.memberVO.id" value="${requestScope.groupInfo.memberVO.id}">
                            <div class="form-group">
                                <label class="control-label">ID:</label>
                                <input type="text" value="${sessionScope.mvo.id }" class="form-control input-lg" placeholder="Your ID"  name="memberVO.id" required readonly>
                            </div>
                            <div class="form-group">
                                <label class="control-label">제목:</label>
                                <input type="text" class="form-control input-lg" placeholder="Title" name="gjTitle" required>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="message-text">신청내용:</label>
                                <textarea id="message-text" class="form-control input-lg" placeholder="Your message"  name="gjContent" required></textarea>
                            </div>
                          <div class="modal-footer">
                        	<button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                       		<button class="btn btn-custom" type="submit"><i class="fa fa-paper-plane"></i> Send</button>
                	    </div>
                        </form>
                    </div>
                  
                </div>
            </div>
        </div>
<!--         End Message Modal -->
<!-- sendmessage 버튼 누르면 뜨는 신기한 폼 끝 -->