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
        <TITLE>Historia Rachunku</TITLE>
    </HEAD>
<link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <BODY>
    <br/>
    <center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
        Historia rachunku
	</div>
	</center>

        <% 
        Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
		String nr = request.getParameter("acc");
            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from Historia WHERE nr_rach = '" + nr + "'") ; 
            //Data_Transakcji date, nr_rach varchar(18), kwota_oper double, typ_oper varchar(1)
        %>

        <table border="1" align="left" STYLE="margin-top: 20px; margin-left: 20px;">
            <TR>
                <TH>Data Operacji</TH>
                <TH>NR Rachunku</TH>
                <TH>Kwota Operacji</TH>
                <TH>Typ Operacji</TH>

            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getDate(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getDouble(3) %></td>
                <TD> <%= resultset.getString(4) %></TD>

            </TR>
            <% } %>
        </TABLE>
        <img src="http://promyk-walcz.pl/assets/images/shutterstock_35547145_1_.jpg" align="left" height="293" width="400" STYLE="margin-top: 80px; margin-left: 40px;"/>
       
    </BODY>
</HTML>