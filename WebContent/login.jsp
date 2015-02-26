<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<style type="text/css">
body {
    background-image:
       url('http://genop.dmggroup.pl/tapety/451160.jpg');
}

</style>
        <title>Logowanie</title>
    </head>
    <link rel="Shortcut icon" href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <body>
    <a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
    
    <center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Logowanie
    </div></center>
    
        <form  action="Login" method="post">
            <div align="center" style="font-weight: bold;">
            <table border="0" width="30%" cellpadding="3" align="left" STYLE="margin-top: 20px; margin-left: 20px;">
                <thead>
                    <tr>
                        <th colspan="2">Wprowadź dane:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nazwa użytkownika</td>
                        
                        <td><input type="text" name="uname" value="" autofocus="autofocus" maxlength=20 required=required placeholder="np. jan123" title="podaj nazwę użytkownika"/></td>
                    <%
           					String blad = "";
           					if(request.getAttribute("pustepole1")!=null){
           						blad = (String)request.getAttribute("pustepole1");
           			%>
           				</tr><tr><label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           					if (request.getAttribute("pustepole2")!=null){
   						blad = (String)request.getAttribute("pustepole2");
   					%>
						<label class="contact"><strong><%=blad %></strong></label>	
           			<% } 
           			if (request.getAttribute("brakpowiazania")!=null){
   						blad = (String)request.getAttribute("brakpowiazania");
   					%>
						<label class="contact"><strong><%=blad %></strong></label>	
           			<% }
 
           			%>
                    </tr>
                    <tr>
                        <td>Hasło</td>
                        <td><input type="password" name="pass" value="" maxlength=20 required=required placeholder="np. Haslo123" title="podaj hasło"/></td>
                    </tr>
                    <tr>
                        <td><center><input type="reset" value="Czyść" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF;"/></center></td>
                        <td><center><input type="submit" value="Loguj" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF;"/></center></td>
                    </tr>
                    <tr>
                        <td colspan="2">Nie jesteś zarejestrowany. <a href="registration.jsp">Zarejestruj się !</a></td>
                    </tr>
                </tbody>
            </table>            
			<img src="http://upload.wikimedia.org/wikipedia/commons/a/a2/Nuvola_apps_kgpg.png" align="left" STYLE="margin-top: 40px;"/>
			</div>

        </form>
    </body>
</html>