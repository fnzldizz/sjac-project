<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="${initParam.root}boardtool/css/board.css" type="text/css">
    <form method=post action="board_update.do">
         <table class="content">
            <tr>
               <td>
               <b>글번호: <input type=text name=no value=${bvo.no } readonly></input>
               | 타이틀:<input type=text name=title value=${bvo.title }></input></b>
               </td></tr><tr>   <td>
                  <font size="2"> 
                  작성일시:${bvo.myDate } 
               </font>
               </td>
            </tr>
            <tr>
               <td>                  
   <textarea rows="15" cols="75" name="content">${bvo.content }</textarea>
               </td>
            </tr>
            <tr>
               <td valign="middle">                  
               <input type="submit" value="수정하기"   ></input>         
               </td>            
            </tr>
         </table>
</form>   
         