<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Profile </a> </h4>
                                </div>

                                <form accept-charset="utf-8" method="post" enctype="multipart/form-data" id="UserProfileForm" class="form-horizontal">
                                    <div class="panel-body">            
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Username</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required" value="레오아빠능균" maxlength="100" class="form-control" readonly >                                  </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="email" required="required"  value="leofather@nyeunggyun.co.leo" maxlength="100" class="form-control" readonly >                        
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">First Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required"  value="" class="form-control" >                                   </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Last Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required"  value="" class="form-control" >                                   </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Phone</label>
                                            <div class="col-sm-9">
                                                <input type="tel"  value="" maxlength="100" class="form-control" >                                  </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Address</label>
                                            <div class="col-sm-9">
                                                <input type="text" value="" class="form-control" >                                 </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label">Avatar</label>
                                            <div class="col-sm-9">
                                                <input type="file" class="filestyle" >
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label">Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" placeholder="Left blank if you will not update" value="" >                                         <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label">Confirm Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" >                                           <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-9"> </div>
                                        </div>

                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-custom"><i class="fa fa-save"></i> Save Update</button>
                                                <button type="submit" class="btn btn-default"><i class="fa fa-close"></i> Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </form> 
                            </div>