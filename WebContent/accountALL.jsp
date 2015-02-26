<%@ page import="java.sql.*" %>

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
        <TITLE>Wszystkie rachunki</TITLE>
    </HEAD>
<link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <BODY>
    <br/>
    <a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
        <center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Wszystkie rachunki
    </div></center>

        <% 
        Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from Tabela_Glowna") ; 
        %>

        <TABLE BORDER="1" align="left" STYLE="margin-top: 20px; margin-left: 20px; ">
            <TR>
                <TH>NR Rachunku</TH>
                <TH>NR Klienta</TH>
                <TH>Waltua Rachunku</TH>
                <TH>Stan Konta</TH>

            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></td>
                <TD> <%= resultset.getDouble(4) %></TD>

            </TR>
            <% } %>
        </TABLE>
        <img src="http://s3.egospodarka.pl/grafika/oferta-bankow/Nizsze-rachunki-domowe-w-Alior-Bank-dBd5wE.jpg" align="left" height="347" width="400" STYLE="margin-top: 20px; margin-left: 40px;"/>
    </BODY>
</HTML>