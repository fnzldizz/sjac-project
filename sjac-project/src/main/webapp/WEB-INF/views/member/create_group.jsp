<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-9 col-sm-9">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> New Ads </a> </h4>
                                </div>

                                <form accept-charset="utf-8" method="post" enctype="multipart/form-data" id="UserProfileForm" class="form-horizontal">
                                    <div class="panel-body">             
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required" value="" class="form-control">                                   
											</div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Price</label>
                                            <div class="col-sm-9">
                                                <input type="number" min="1" required="required" value="" class="form-control">                                
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Detail</label>
                                            <div class="col-sm-9">
                                                <textarea class="form-control"></textarea>                                
                                            </div>
                                        </div>
                                        <div class="form-group">
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
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-custom"><i class="fa fa-save"></i> Publish</button>
                                                <button type="submit" class="btn btn-default"><i class="fa fa-close"></i> Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </form> 
                            </div>
                        </div>