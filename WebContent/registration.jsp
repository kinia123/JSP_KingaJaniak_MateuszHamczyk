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
    Rejestracja
    </div></center>
    
        <form method="post" action="Registration">
            <div align="center" style="font-weight: bold;">
            <table border="0" cellpadding="3" align="left" STYLE="margin-top: 20px; margin-left: 20px;">
                <thead>
                    <tr>
                        <th colspan="2">Wprowadź dane:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Imię</td>
                        
                   <%
           					String blad = "";
           					if(request.getAttribute("brakimie")!=null){
           						blad = (String)request.getAttribute("brakimie");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        
                        <td><input type="text" name="fname" value="" autofocus="autofocus" maxlength=20 required=required placeholder="np. Jan" title="podaj imię"/></td>
                    </tr>
                    <tr>
                        <td>Nazwisko</td>
                        
                      <%
           					//String blad = "";
           					if(request.getAttribute("braknazw")!=null){
           						blad = (String)request.getAttribute("braknazw");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>  
                        
                        
                        <td><input type="text" name="lname" value="" maxlength=20 required=required placeholder="np. Kowalski" title="podaj nazwisko"/></td>
                    </tr>
                    <tr>
                        <td>Adres</td>
                        
                        
                        <%
           					//String blad = "";
           					if(request.getAttribute("brakadres")!=null){
           						blad = (String)request.getAttribute("brakadres");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><textarea name="adress" cols="16" rows="3" wrap="virtual" maxlength=150 required=required placeholder="np. ul.Słoneczna 3/7 09-530 Gabin" title="podaj adres"></textarea></td>
                    </tr>
                    <tr>
                        <td>Telefon</td>
                        
                        <%
           					//String blad = "";
           					if(request.getAttribute("braktel")!=null){
           						blad = (String)request.getAttribute("braktel");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><input type="number" name="phone" value="" maxlength=9 required=required placeholder="np. 505303678" min="100000000" max="999999999" title="podaj numer telefonu"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        
                        <%
           					//String blad = "";
           					if(request.getAttribute("brakemail")!=null){
           						blad = (String)request.getAttribute("brakemail");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><input type="text" name="email" value="" maxlength=50 required=required placeholder="np. mail@poczta.pl" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="podaj email"/></td>
                    </tr>
                    <tr>
                        <td>Nazwa użytkownika</td>
                        
                        <%
           					//String blad = "";
           					if(request.getAttribute("braklogin")!=null){
           						blad = (String)request.getAttribute("braklogin");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><input type="text" name="uname" value="" maxlength=20 required=required placeholder="np. jan123" pattern=".{3,}" title="podaj nazwę użytkownika (powinna mieć przynajmniej 3 znaki)"/></td>
                    </tr>
                    <tr>
                        <td>Hasło</td>
                        
                        <%
           					//String blad = "";
           					if(request.getAttribute("pustehaslo")!=null){
           						blad = (String)request.getAttribute("pustehaslo");
           			%>
           				<label class="contact"><strong><%=blad %></strong></label>
           			<%
           			} 
           			
           			%>
                        <td><input type="password" name="pass" value="" maxlength=20 required=required placeholder="np. Haslo123" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="podaj hasło (powinno się różnić od nazwy użytkownika, preferowana długość 8 znaków, w tym przynajmniej jedna duża litera i jedna cyfra)"/></td>
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
                        <td><input type="submit" value="Zarejestruj" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF; margin-left: 80px;"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">Jeśli jesteś już zarejestrowany, <a href="login.jsp">Zaloguj się !</a></td>
                    </tr>
                </tbody>
            </table>
            <img src="https://www.hiponet.pl/file/get/hash/d8cf28/size/small/sid/513" align="middle" STYLE="margin-top: 100px;"/>
            </div>
        </form>
    </body>
</html>