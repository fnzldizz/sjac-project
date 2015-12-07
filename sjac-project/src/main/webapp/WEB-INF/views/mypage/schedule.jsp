<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">My Schedule</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="before-table">
                                        <div class="row">
                                           
                                            <div class="col-xs-6">
                                                <form class="form-inline pull-right">
                                                    <div class="form-group">
                                                            <div class="input-group">
                                                                <input type="text" name="q" placeholder="Type keyword ..." class="form-control">
                                                                <div class="input-group-addon"><i class="fa fa-search"></i></div>
                                                            </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th><input id="checkAll" type="checkbox" /></th>
                                                <th>Group</th>
                                                <th style="width:35%">Schedule date</th>
                                                <th style="width:30%">Group Name</th>
                                                 <th style="width:40%">Schedule Info</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${requestScope.scheduleList}" var="scheduleList">
                                        		  <tr>
                                                <td><input type="checkbox"></td>
                                                <td><img alt="" class="thumb-img img-responsive"  src="${scheduleList.groupVO.subjectVO.categoryImg}"></td>
                                                 
                                                <c:choose>
                                                	<c:when test="${scheduleList.deadline < 3}">
                                                	  <td bgcolor="#FFEBFF">
                                                        <ul>
                                                            <li class="item-date"><i class="fa fa-clock-o"></i><strong>${scheduleList.scheduleDate}</strong></li>
                                                        </ul>
                                              		  </td>
                                                	</c:when>
                                                	<c:otherwise>
                                                	  <td>
                                                        <ul>
                                                            <li class="item-date"><i class="fa fa-clock-o"></i>${scheduleList.scheduleDate}</li>
                                                        </ul>
                                                      </td>
                                                	</c:otherwise>
                                                </c:choose> 
                                               
                                                
                                                
                                                
                                                
                                                <td>
                                                    <div class="item-title"><a href="detail.html" target="_blank">${scheduleList.groupVO.gName}</a></div>
                                                </td>
                                                <td>
                                                	<ul>
                                                		 <li class="item-location"><a href="category.html">${scheduleList.scheduleInfo}</a></li>
                                                	</ul>
                                                </td>
                                                <!-- <td>
                                                    <ul class="actions-table">
                                                        <li><a class="label label-success"><i class="fa fa-pencil"></i> edit</a></li>
                                                        <li><a class="label label-warning"><i class="fa fa-close"></i> disable</a></li>
                                                        <li><a href="#" class="label label-danger" onclick="return confirm('Remove this item?')"><i class="fa fa-trash"></i> delete</a></li>
                                                    </ul>
                                                </td> -->
                                            </tr>
                                        	
                                        	</c:forEach>
                                        
                                        
                                          
                                        </tbody>
                                    </table>
                                    
                                    
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <select class="form-control">
                                                <option selected="">Bulk Action</option>
                                                <option>Block</option>
                                                <option>Delete</option>
                                            </select>
                                        </div>
                                        
                                        
                                        <!--  paging  -->
                                     <!--    <div class="col-xs-9 text-right">
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
                            </div>