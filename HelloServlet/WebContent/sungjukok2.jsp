<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<jsp:useBean id="sj" class="model.SungJukV0" />
<jsp:useBean id="sjsrv" scope="application" class="jm.service.SungJukService" />
<<fmt:requestEncoding value="UTF-8" />

<!--<jsp:setProperty property="name" name="sj"/>
<jsp:setProperty property="kor" name="sj"/>
<jsp:setProperty property="eng" name="sj"/>
<jsp:setProperty property="mat" name="sj"/>-->
<jsp:setProperty  name="sj" property="*"/>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 성적처리결과</title>
</head>
<body>
	<h1>JSP 성적처리결과</h1>
	<h2>입력정보</h2>
	<div><b>이름</b>:<c:out value="${sj.name }" />  </div>
	<div><b>국어</b>:<c:out value="${sj.kor }" /> </div>
	<div><b>영어</b>:<c:out value="${sj.eng }" /> </div>
	<div><b>수학</b>:<c:out value="${sj.mat }" /> </div>

	
	
	<h2>처리결과</h2>
	<div><b>총점</b>:<c:out value="${sjsrv.getTotal(sj) }" /> </div>
	<div><b>평균</b>:<c:out value="${sjsrv.getAverage(sj)}" /> </div>
	<div><b>학점</b>:<c:out value="${sjsrv.getGrade(sj) }" /> </div>
	
	<hr>
	<div>클라이언트 IP주소: <%=request.getRemoteAddr() %></div>
	<div>요청 URI: <%=request.getRequestURI() %></div>
	<div>클라이언트 IP주소: <%=request.getMethod() %></div>
	<div>클라이언트 IP주소: <%=request.getContextPath() %></div>

	
</body>
</html>