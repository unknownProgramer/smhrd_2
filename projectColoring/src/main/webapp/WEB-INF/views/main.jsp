<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
<script type="text/javascript"> 

</script>
  
</head>
<body>
   <div class="container">
      <h2>test</h2>
      <div class="panel panel-default">
         <div class="panel-heading">testing</div>
         <div class="panel-body">
            <!-- 여기에 게시판 리스트 출력 -->
            <table class="table ">
               <tr>
                  <td>test</td>
                  <td>test</td>
                  <td>test</td>
                  <td>test</td>
                  <td>test</td>
                  <td>test</td>
               </tr>
               <c:forEach var="vo" items="${list}">
                  <tr>
                     <td>test</td>
                     <td>test</td>
                     <td>test</td>
                     <td>test</td>
                     <td>test</td>
                     <td>test</td>
                  </tr>
               </c:forEach>
               <tr>
                  <td colspan="5">
                     <button class="btn btn-primary"
                        onclick="goList()">testing</button>
                  </td>
               </tr>
            </table>
            <div id="view"></div>
         </div>
         <div class="panel-footer">지능형 빅데이터 분석 자동 도서 열람 시스템</div>
      </div>
   </div>
</body>
</html>