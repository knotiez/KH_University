<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #enrollForm>table {
        width: 100%;
    }
    
    #enrollForm>table * {
        margin: 5px;
    }
</style>
</head>
<body>
   <jsp:include page="../common/header_with_sidebar.jsp"/>
   <div class="content">
      <br><br>
         <div class="innerOuter">
             <h2>공지사항 작성하기</h2>
             <br>
 
             <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
                 <table align="center">
                     <tr>
                         <th><label for="title">제목</label></th>
                         <td><input type="text" id="title" class="form-control" name="boardTitle" required></td>
                     </tr>
                     <tr>
                         <th colspan="2"><label for="content">내용</label></th>
                     </tr>
                     <tr>
                         <th colspan="2">
                             <textarea class="form-control" required name="boardContent" id="content" rows="10" style="resize:none;"></textarea>
                         </th>
                     </tr>
                 </table>
                 <br>
 
                 <div align="center">
                     <button type="submit" class="btn btn-primary">등록하기</button>
                     <button type="reset" class="btn btn-danger">취소하기</button>
                 </div>
             </form>
         </div>
         <br><br>
   </div>
   <jsp:include page="../common/footer.jsp"/>
</body>
</html>