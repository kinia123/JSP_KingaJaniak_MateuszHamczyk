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
        <TITLE>Historia klienta</TITLE>
    </HEAD>
    <link rel="Shortcut icon" href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <BODY>
        
        <% 
        Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
		String nr = request.getParameter("client");
            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from Tabela_Glowna WHERE nr_klient = '" + nr + "'") ; 
        %>

		<br/>
        <center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Historia klienta 
    </div></center>
    
            <TABLE BORDER="1" align="left" STYLE="margin-top: 20px; margin-left: 20px;">
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
            <% } %>		</TABLE>
        <img src="http://www.zycie-chotomowa.pl/wp-content/uploads/2013/06/oplaty.jpg" align="left" height="291" width="438" STYLE="margin-top: 20px; margin-left: 40px;"/>
       
    </BODY>
</HTML>