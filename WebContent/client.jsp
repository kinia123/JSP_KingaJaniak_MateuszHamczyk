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
        <title>Klient</title>
    </head>
    <link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
    <body>
    <br/>
    <a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
    
    <center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Wyszukiwanie informacji o kliencie
    </div></center>
    
        <form  action="Client" method="post">
            <div align="center" style="font-weight: bold;">
            <table border="0" width="30%" cellpadding="3" align="left" STYLE="margin-top: 100px; margin-left: 20px;">
                <thead>
                    <tr>
                        <th colspan="2">Wprowadź dane:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Numer Klienta</td>
                        
                        <td><input type="text" name="client" value="" autofocus="autofocus" maxlength=8 required=required placeholder="np. 57096000" title="podaj nr klienta"/></td>
                    
         
                    </tr>
                   
                    <tr>
                        <td><center><input type="reset" value="Czyść" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF;"/></center></td>
                        <td><center><input type="submit" value="Wyświetl" STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF;"/></center></td>
                    </tr>
       
                </tbody>
            </table>            
			<img src="http://mdmarketing.pl/icore/images/frontpage/klient.jpg" align="middle" STYLE="margin-top: 40px;"/>
			</div>

        </form>
    </body>
</html>