<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSP 주석 -->

<%
	//자바코드 블럭 시작
	
	//JSp 내장객체 : Request
	//클라이언트의 요청을 처리하는 기능들로 구석ㅇ된 객체
	//getCharacterEncoding : 클ㄹ라이언트의 요청 문자집합 처리
	//getParameter : 클라이언트의 폼 매개변수 처리
	//remoteAddr : 클라이언트 요청 IP주소 확인
	//getRequestURI : 클라이언트 요청 URI 확인
	//getMethod : 클라이언트의 요청 유형확인
	//getContext : JSP의 웹 어플리케이션 컨텍스트 확인
	
	//1.클라이언트가 요청한 데이터를 자바코드에서 사용할수 있도록 변수로 초기화 함
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	//2.성적처리(총점 평균 학점)
	int tot =  Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(mat);

	double avg =(double)tot/3;
	
	char grd = 'F';
	switch((int)avg/10)
	{
	case 10 :
	case 9: grd='A'; break;
	case 8: grd='B'; break;
	case 7: grd='C'; break;
	}
	
	//3.결과 출력
%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 성적처리결과</title>
</head>
<body>
	<h1>JSP 성적처리결과</h1>
	<h2>입력정보</h2>
	<div><b>이름</b>:<%=name %></div>
	<div><b>국어</b>:<%=kor %></div>
	<div><b>영어</b>:<%=eng %></div>
	<div><b>수학</b>:<%=mat %></div>

	
	
	<h2>처리결과</h2>
	<div><b>총점</b>:<%=tot %></div>
	<div><b>평균</b>:<%=avg %></div>
	<%-- <div><b>평균</b>:<%=String.format("%.1f",avg) %></div> --%>
	<div><b>학점</b>:<%=grd %></div>
	
	<hr>
	<div>클라이언트 IP주소: <%=request.getRemoteAddr() %></div>
	<div>요청 URI: <%=request.getRequestURI() %></div>
	<div>클라이언트 IP주소: <%=request.getMethod() %></div>
	<div>클라이언트 IP주소: <%=request.getContextPath() %></div>

	
</body>
</html>