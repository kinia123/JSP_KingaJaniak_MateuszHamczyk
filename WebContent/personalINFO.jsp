<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>

<% Class.forName("org.hsqldb.jdbcDriver"); %>

<HTML>
<style type="text/css">
body {
	background-image: url('http://genop.dmggroup.pl/tapety/451160.jpg');
}
td{
text-align: right;
}

</style>
    <HEAD>
        <TITLE>Dane Osobowe</TITLE>
    </HEAD>
<link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <BODY>
    <br/>
    <a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
        <center>
	<div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Dane Osobowe
    </div></center>

        <% String userName = null;
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
		   	 if(cookie.getName().equals("userID")){
		    	userName = cookie.getValue();
		   	 }
			}
     		    	
        Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select Imie, nazwisko, adres,telefon, email from PUBLIC.Pracownik WHERE login = '" + userName + "'" ) ; 
        %>

        <TABLE BORDER="1" align="center" STYLE="margin-top: 20px; margin-left: 60px">
            <thead>
            <TR>
                <TH>IMIE</TH>
                <TH>NAZWISKO</TH>
                <TH>ADRES</TH>
                <TH>TELEFON</TH>
                <TH>EMAIL</TH>

            </TR>
            </thead>
            <tbody>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></td>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></td>
            </TR>
            <% } %>
            <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td><td>
            <a href="updatePASS.jsp"> <input type="submit" value="ZMIANA HASLA" STYLE="width:100px; height:30px; background: #CC99FF; border: #1C99FF;"></input></a>
            </td>
			</tr>
			</tbody>
        </TABLE>
      			 <br/>
      			 
        <center>
        <img src="http://betanews.pl/wp-content/uploads/2013/04/HumanElement_3-600x300.jpg" height="291" width="438" STYLE="margin-top: 20px; margin-left: 40px;"/>
        </center>
    </BODY>
</HTML>