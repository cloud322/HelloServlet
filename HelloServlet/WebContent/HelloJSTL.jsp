<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
 <h1>JSTL</h1>
 <div>간단한출력문<c:out value="${sj.name}"  /></div>
 <div>값설정하기<c:set var="name" value="지현" /><c:out value="${name}" /></div>
 <div>
 	<c:set var="age" value="15" />
 	<c:if test="${age <20}" var="result">
 	당신은 미성년자입니다
 	</c:if>
 </div>
 <div>
 	<c:forEach var="i" begin="1" end="10" step="2"> ${i} <br>
 	</c:forEach>
 </div>
 

</body>
</html>