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
        <TITLE>Kursy walut</TITLE>
    </HEAD>
<link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <BODY>
    <br/>
    <a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
        <center>
	<div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Kursy walut 
    </div></center>

        <% 
        Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from Kurs_Walut") ; 
        %>

        <TABLE BORDER="1" align="left" STYLE="margin-top: 20px; margin-left: 60px">
            <TR>
                <TH>Kod_Waluty</TH>
                <TH>Kurs</TH>

            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getDouble(2) %></TD>
            </TR>
            <% } %>
        </TABLE>
        <middle>
        <img src="http://www.zdjecia.biz.pl/zdjecia/duze/banknoty-dolary-monety.jpeg" align="left" height="291" width="438" STYLE="margin-top: 20px; margin-left: 40px;"/>
        </middle>
    </BODY>
</HTML>