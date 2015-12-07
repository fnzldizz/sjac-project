<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
$(document).ready(function(){
	$("#cancelBtn").click(function(){
		location.href="home.do";
	});
	
});

</script>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> Create Group </a> </h4>
                                </div>

                                <form action="auth_createNewGroup.do" accept-charset="utf-8" method="post"  id="UserProfileForm" class="form-horizontal">
                                    <div class="panel-body">             
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">ID</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required" value="${sessionScope.mvo.id}" class="form-control" readonly>                                   
											</div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">그룹 이름</label>
                                            <div class="col-sm-9">
                                                <input type="text"  required="required" value="" class="form-control" name="gName">                                
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">그룹 정보</label>
                                            <div class="col-sm-9">
                                                <textarea class="form-control" name="gInfo"></textarea>                                
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <label class="col-sm-3 control-label">참여가능 인원수</label>
                                            <div class="col-sm-9">
                                                <input type="number" min="1" required="required" value="" class="form-control" name="gCounter">                                
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <label class="col-sm-3 control-label">과목</label>
                                            <div class="col-sm-9">
                                                <input type="text"  required="required" value="" class="form-control" name="subjectVO.subject">                                
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <label class="col-sm-3 control-label">지역</label>
                                            <div class="col-sm-9">
                                                <input type="text"  required="required" value="" class="form-control" name="gLocation">                                
                                            </div>
                                        </div>
                                       <!--  <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo 1</label>
                                            <div class="col-sm-9">
                                                <input type="file" class="filestyle">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo 2</label>
                                            <div class="col-sm-9">
                                                <input type="file"  class="filestyle">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Photo 3</label>
                                            <div class="col-sm-9">
                                                <input type="file"  class="filestyle">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>     
                                    </div> -->
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-custom" ><i class="fa fa-save"></i> 만들기</button>
                                                <button type="button" class="btn btn-default" id="cancelBtn"><i class="fa fa-close"></i> 취소</button>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </form> 
                            </div>
