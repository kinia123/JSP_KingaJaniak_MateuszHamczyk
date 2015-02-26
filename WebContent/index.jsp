<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
body {
	background-image: url('http://genop.dmggroup.pl/tapety/451160.jpg');
}

input {
	background-color: #CC99FF;
	border-color: #CC99FF;
	width: 135px; height: 35px;
}
</style>
<head>
<link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Kalkulator zdolności kredytowej</title>
</head>
<body>
	<div align="right">
		<%
		String userName = null;
		String  powitanie = null;
		Cookie[] cookies = request.getCookies();
		
		if(cookies !=null){
			for(Cookie cookie : cookies){
		   	 if(cookie.getName().equals("userID")){
		    	userName = cookie.getValue();
		    	powitanie = "Zalogowano jako: "+ userName;
		   	 }
			}
		}
		
		if(userName == null){
		   		powitanie = "";
		}
		
		if (powitanie =="") {
			
		%>
		<center>
		<div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
		Kalkulator zdolności kredytowej
		</div>
		</center>
		
		<br />
		<center>
			<img src="http://g4.gazetaprawna.pl/p/_wspolne/pliki/1787000/1787452-zlotowki-pieniadze-kasa-657-323.jpg" />
		</center>
		<br />
		<center>
			<a href="login.jsp"> <input type="submit" value="LOGOWANIE"
				STYLE="width: 270px; height: 70px;"></input></a> 
			<a href="registration.jsp">	<input type="submit" value="REJESTRACJA"
				STYLE="width: 270px; height: 70px;"></input></a>
		</center>

		<%
			} else {
		%>
		<h4><div align="right">
			<%=powitanie %>
		</div></h4>
		
		<center>
		<div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
		Kalkulator zdolności kredytowej
		</div>
		</center>
		<br/>
		
		<center>
			<a href="accountALL.jsp"> <input type="submit" value="RACHUNKI"></input></a> 
			<a href="client.jsp"><input type="submit" value="KLIENCI" ></input></a>
			<a href="acc.jsp"><input type="submit" value="HISTORIA"></input></a>
			<a href="form.jsp"><input type="submit" value="OPERACJA"></input></a>
			<a href="personalINFO.jsp"> <input type="submit" value="DANE"></input></a>
		</center>
		
			<form action="Logout" method="post">
				<input type="submit" value="WYLOGUJ"></input>
			</form>

		<br/>
		<center>
			<img
				src="http://g4.gazetaprawna.pl/p/_wspolne/pliki/1787000/1787452-zlotowki-pieniadze-kasa-657-323.jpg" />
		</center>
		<%
    }
%>
	
</body>
</html>