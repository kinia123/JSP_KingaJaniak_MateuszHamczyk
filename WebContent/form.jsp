<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
    <jsp:directive.page language="java"
        contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
    <jsp:text>
        <![CDATA[ <?xml version="1.0" encoding="UTF-8" ?> ]]>
    </jsp:text>
    <jsp:text>
        <![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
    </jsp:text>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
body {
    background-image:
       url('http://genop.dmggroup.pl/tapety/451160.jpg');
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Formularz</title>
</head>
<link rel="Shortcut icon"
	href="http://www.swinkimorskie.eu/SPSM/images/stories/zlotowka.png" />
<body>
<form action="Oper" method="post">
<a href="index.jsp"><input type="image" src="http://www.chatkababyagi.pl/wp-content/uploads/2014/05/dom-bez-tla.png" height="40px" weight="40px" title="Powrót do strony głównej" align="right"></input></a>
<div align="center" style="font-weight: bold;">
<center>
    <div style="color:#CC99FF; font-family: Gill Sans Ultra Bold; font-size:40px">
    Formularz
</div></center>

            <table border="0" width="30%" cellpadding="3" align="left" STYLE="margin-top: 40px; margin-left: 60px;">
                <thead>
                    <tr>
                        <th colspan="2">Wprowadź dane</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Numer rachunku</td>
                        <td><input type="number" name="nrach" value="" autofocus="autofocus" required="required" placeholder="np. 102000299600996504" min="100000000000000000" max="999999999999999999" step="1" title="podaj numer rachunku"/></td>
                    </tr>
                    <tr>
                        <td>Numer Klienta</td>
                        <td><input type="number" name="nclient" value="" required="required" placeholder="np. 57096000" min="10000000" max="99999999" step="1" title="podaj numer klienta"/></td>
                    </tr>
                    <tr>
                        <td>Waluta kredytu</td>
                        <td><input type="radio" name="currency" value="PLN"/>PLN<br/>
                        <input type="radio" name="currency" value="EUR"/>EUR<br/>
                        <input type="radio" name="currency" value="CHF"/>CHF<br/>
                        <input type="radio" name="currency" value="USD"/>USD<br/>
                        <input type="radio" name="currency" value="AUD"/>AUD
                        </td>
                    </tr>
                    <tr>
                    	<td>Kwota kedytu</td>
                        <td><input type="number" name="credit" value="" required="required" placeholder="np. 10000" min="1000" max="1000000" step="500" title="podaj kwotę kredytu"/></td>                        
                    </tr>
                    <tr>
                        <td><input type="reset" value="Czyść"  STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF;  margin-left: 40px;"/></td>
                        <td><input type="submit" value="Zapisz"  STYLE="width:70px; height:30px; background: #CC99FF; border: #1C99FF;  margin-left: 80px;"/></td>
                    </tr>
                </tbody>
            </table>
            <img src="http://banknet.pl/wp-content/uploads/2011/09/kalkulator-zdolno%C5%9Bci-kredytowej-300x271.jpg" align="middle" STYLE="margin-top: 40px;"/>
            <br/>
            </div>
</form>
</body>
</html>
</jsp:root>