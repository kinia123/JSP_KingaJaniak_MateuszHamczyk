<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
    background-image:url('http://genop.dmggroup.pl/tapety/451160.jpg');
}
</style>
        <title>Rejestracja</title>
        <link rel="Shortcut icon" href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    </head>
    <body>
    <br/>
    <a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
    
    <center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Zmiana Hasła
    </div></center>
    
        <form method="post" action="UpdatePD">
            <div align="center" style="font-weight: bold;">
            <table border="0" cellpadding="3" align="left" STYLE="margin-top: 100px; margin-left: 20px;">
                <thead>
                    <tr>
                        <th colspan="2">Wprowadź haslo:</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td>Hasło</td>
                        
                        <%
                      
       					String blad = "";
       			
           					//String blad = "";
           					if(request.getAttribute("pustehaslo")!=null){
           						blad = (String)request.getAttribute("pustehaslo");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><input type="password" name="pass" value="" maxlength=20 required=required placeholder="np. Haslo123" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="podaj hasło (powinno się różnić od nazwy użytkownika, preferowana długość 8 znaków, w tym przynajmniej jedna duża litera i jedna cyfra)" /></td>
                    </tr>
                    <tr>
                        <td>Powtórz hasło</td>
                        
                        <%
           					//String blad = "";
           					if(request.getAttribute("innehasla")!=null){
           						blad = (String)request.getAttribute("innehasla");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><input type="password" name="pass2" value="" maxlength=20 required=required placeholder="np. Haslo123" title="podaj hasło ponownie"/></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Czyść" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF; margin-left: 40px;"/></td>
                        <td><input type="submit" value="Zmień" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF; margin-left: 80px;"/></td>
                    </tr>

                </tbody>
            </table>
            <img src="http://img.interia.pl/biznes/nimg/h/p/Histerycy_danych_6390398.jpg" align="middle" STYLE="margin-top: 40px;"/>
            </div>
        </form>
    </body>
</html>