<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
           
    h1{
        margin: 0 !important;
        color: rgb(32, 56, 100);
        /* padding: 20px; */
    }
    h3{
        padding: 50px 50px 0 100px;
        margin: 0 !important;
    }
    #topdiv{
        margin-top: 50px;
        margin-left: 100px;
        margin-right: 100px;  
        padding: 20px 20px 20px 50px;
        overflow: hidden;
    }
    div{
        display: block;
        box-sizing: border-box;
    }
    ul,li{
        list-style: none;
        padding: 0;
    }
    li{
        float: left;
        padding: 2px;
    }
    #contentDiv, #footerDiv, #footerH3{
        margin-left: 100px;
        margin-right: 100px;  
    }
    #h1Div{
        float: left;
    }
    #liGroup{
        float: right;
        line-height: 50px;
    }
    .form-group{
        padding-top: 50px;
        padding-right: 100px;
        padding-bottom: 30px;
        padding-left: 100px
    }
    #footerTable>* {
        text-align: center !important;
        width: 275px;
    }
    thead *{
        background-color: #1c4587;
        color: white;
    }
    .homework_li_class{

        width: 250px;
        height: 65px;
        border: 2.5px solid #858796;;
        font-size: 20px;
        line-height: 60px;
        display: inline-block;
        cursor:pointer;
        text-align:center;
    }
    #HomeworkLiDiv{
        display: flex;
        justify-content: center;
    }
    #wave{
        width: 50px;
    }
    .ui-datepicker-trigger{
        display: none;
    }
    .btns{
        padding-bottom: 50px;
    }
    #footerDiv{
        padding:  50px 100px 50px 100px;
    }
    #SMcontentDiv{
        border: 1px solid #d1d3e2;
        border-radius: 0.35rem;
        padding: 1rem 1rem;
    }
    </style>
</head>
<body>
    <jsp:include page="../common/header_with_sidebar.jsp"/>
    <jsp:include page="../common/datePickerNsummernote.jsp"/>
    <div class="content">

    <div id="topdiv"class="bg-white">

        <div id="h1Div">
            <h1 style="font-weight: 900;">과제</h1>
        </div>
        <div id="liGroup">
            <ul>
                <li>과제 </li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li> 과제 현황</li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li style="font-weight: bold;"> 과제 현황 상세보기 </li>
            </ul>
        </div>

    </div>
    <div style="padding: 15px;" id="HomeworkLiDiv">
        <ul style="height: 66px; margin: 0;" >
            <li class="homework_li_class" style="background-color: white;" onclick="location.href = 'professorPJEnrollForm.do'">과제 등록</li>
            <li class="homework_li_class" style="background-color: #1c4587; color: white; margin-right: 0.5px;">과제 현황</li>
        </ul>
        
    </div>
    
    
    <div id="contentDiv" class="bg-white">
        <div>
            <h3>과제 현황 상세보기</h3>
			<input type="hidden" id="pjNo" name="pjNo" value="${p.pjNo }">
 
                <div class="form-group">
                    
                    <label for="lectureSelect">강의 명 </label>
                    <span class="form-control" id="lectureSelect" name="pjClassName">${p.pjClassName }</span><br>

                    <label for="lectureTitle">제목 </label>
                    <span class="form-control" id="lectureTitle" name="pjTitle">${ p.pjTitle }</span><br>
                
                    
                    <label for="lectureNm"> &nbsp;마감기한 :</label>
                    <table>
                        <tr>
                            <td>
                            	<span class="form-control" id="lectureTitle" name="pjDeadline">${ p.pjDeadline }</span><br>
                            </td>
                        </tr>
                    </table>

                    <br>

                    
                    <label for="content"> &nbsp;내용 </label>
                     <!-- <textarea id="summernote" name="editordata" cols="30" rows="10" class="form-control summernote" style="resize:none;" readonly></textarea>
                   	  -->

                    <div id="SMcontentDiv">
                        <span id="SMcontentSpan">${p.pjContent}</span>
                    </div>
                   <script>
                   		//이건 수정할때 쓰는거임 ㅠ
                   		//$('#summernote').summernote('pasteHTML', '${p.pjContent}');
                   </script>


                </div>
                <br>
        </div>
        <br>
	<div class="btns" align="center">
    <button type="button" class="btn btn-secondary" onclick="location.href='professorPJStateList.do'">목록으로</button>
   	</div>
    </div>
    


    <br><br>


    <div id="footerH3"class="bg-white">
        <h3>제출 현황</h3>
    </div>
    <div id="footerDiv" class="bg-white">

        


        <table class="table" id="footerTable">
            <thead>
                <tr>
                    <th >학생이름</th>
                    <th>학번</th>
                    <th >현황</th>
                    <th >파일첨부</th>
                </tr>
            </thead>
			
			

            <tbody>
            </tbody>

        </table>
    </div>
    
    <script>

    
    	$(function(){
    		
        	let pjNo = $("#pjNo").val();
        	//let lectureSelect = $("#lectureSelect").text();
        	console.log(pjNo);
        	//console.log(lectureSelect);
    		
    		
    		$.ajax({
    			url:"professorStuPjFileDownload.do",
    			data:{
    				pjNo:pjNo
    			},
    			success:function(sp){
    				console.log(sp);
			    	let value = "";
			    	for(let i=0; i<sp.length;i++){
			    		if(sp[i].stpStatus === 'I'  || sp[i].stpStatus === 'M'){ // 'i'는 미제출을 의미하는 값이라고 가정합니다.
			    	        sp[i].stpStatus = '미제출'; // 상태를 '미제출'로 변경합니다.
				    		value += "<tr>"
			    			     + "<td>" + sp[i].studentName + "</td>"
			    			     + "<td>" + sp[i].studentId + "</td>"
			    			     + "<td class='status' style='color:red;'>" + sp[i].stpStatus+ "</td>"
			    			     + "<td><a href='" + sp[i].stpChangeName + "' download='" + sp[i].stpOriginName + "' class='btn btn-outline-primary'style='pointer-events: none;' >첨부파일없음</a></td>" 
			    			     + "</tr>";
			    	        
			    	    }else if(sp[i].stpStatus === 'D'){
			    	    	sp[i].stpStatus = '제출'
					    		value += "<tr>"
				    			     + "<td>" + sp[i].studentName + "</td>"
				    			     + "<td>" + sp[i].studentId + "</td>"
				    			     + "<td class='status' style='color:blue;'>" + sp[i].stpStatus+ "</td>"
				    			     + "<td><a href='" + sp[i].stpChangeName + "' download='" + sp[i].stpOriginName + "' class='btn btn-outline-primary' >다운로드</a></td>" 
				    			     + "</tr>";
			    	    }

			    	
			    	}
			    	
			    	$("#footerTable tbody").html(value);

    			},error:function(){
    				
    			}
    			
    		})
    		
    		if($(".status").val()='미제출'){
    			
    		}
    		

    		
    	})
    </script>

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>