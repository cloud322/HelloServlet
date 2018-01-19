<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL & DBCP</title>
</head>
<body>
	<h1>JSTL & DBCP</h1>
	
	<h2>오라클접속</h2>
	<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
	url="jdbc:oracle:thin:@192.168.27.128:1521:xe" user="hr" password="hr" var="ds"/>
	<sql:query dataSource="${ ds }" sql="select first_name,last_name from employees" var="rs" />
	
	<c:forEach var="row" items="${rs.rows}">
		${row.first_name }, ${row.Last_name } <br> 
	</c:forEach>
	
	<hr>
	<h2>데이터베이스 커넥션을 사용하기</h2>
	<p>JDBC 프로그래밍시 DB관련 작업에서 연결객체 생성하고 소멸하는 작업이 변변하게 일어나는데 이떄 접속자가 많으면 
	실행시간이 많이 지연</p>
	<p>따라서 연결객체를 만든후 바로 소멸하지 않고, 이객체들을 저장하는 저장소 pool 에 일시적으로 저장해 두었다 
	다른사용자가 사용해야 할 경우 객체를 다시 생성하지 않고 ㅈ기존에 만들어 둔객체 재사용하게 함</p>
	<p>DBPC 를 사용하려면 DB접속정보를 설정해야하는데, 이것을 datasource 라 하고 JDNI 표기법을 이용해서 정의함</p>
	<p>설정 관련 파일 - server.xml / web.xml</p>

	<sql:query var="rs" dataSource="jdbc/oracle" sql="select first_name, salary from employees where salary > ?">
		<sql:param value="10000"/>
	</sql:query>
	
	<c:forEach var="row" items="${rs.rows}">
		${ row.first_name } => ${row.salary } <br> 
	</c:forEach>
	
	<p> JNDI - java naming directory interface</p>
	<p>자바 프로그램에서 네트워크 URI 로 모든 자원의 위치를 파악하고 필요시 그것을 쉽게 호출하게 위해 사용하는규칙 </p>

	<p> DB접속정보작성 - datasource 정의</p>
	<p> conf/server.xml 에 Context 테그 속에 resource 테그로 작성하고</p>
	<p> WEB-INF.xml 에 resource-ref 테그로 datasource 를 참조</p>
	
	<h2>mysql/mariaDB접속</h2>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://192.168.27.128:3306/cloud" 
	user="cloud" password="Abcdef_12" var="mysql"/>
	
	<sql:query dataSource="${ mysql }" sql="select city, state, phone from customers" var="rs" />
	
	<c:forEach var="row" items="${rs.rows}">
		${row.city}, ${row.state }, ${row.phone } <br> 
	</c:forEach>

<h2>데이터베이스 커넥션을 사용하기</h2>	
	
	<hr>
	<sql:query var="rs" dataSource="jdbc/mysql" sql="select city, state, country from customers where city like ?">
	<sql:param value="L%" />
	
	</sql:query>
	
	<c:forEach var="row" items="${rs.rows}">
		${row.city}, ${row.state }, ${row.country } <br> 
	</c:forEach>
	

	
</body>
</html>