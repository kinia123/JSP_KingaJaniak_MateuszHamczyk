package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(
        description = "Login", 
        urlPatterns = { "/Login" }) 

public class Login extends HttpServlet {
	Connection conn;                                                //our connnection to the db - presist for life of program

    private static final long serialVersionUID = 1L;
        
     
    public void init() throws ServletException {
    	try {
			Class.forName("org.hsqldb.jdbcDriver");
			conn = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
 
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if(request.getParameter("uname") == ""){
   		 
			request.setAttribute("pustepole1","<font color=red>Pole Login nie moze być puste</font>") ;
        	getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    	}
    	
    	if(request.getParameter("pass") == ""){
      		 
			request.setAttribute("pustepole1","<font color=red>Pole Haslo nie moze byc puste</font>") ;
        	getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    	}
        //get request parameters for userID and password
        String user = request.getParameter("uname");
        String pwd = request.getParameter("pass");
            
			Statement st = null;
			try {
				st = conn.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ResultSet rs = null;
			try {
				rs = st.executeQuery("select * from PUBLIC.Pracownik where login='" + user + "' and pass='" + pwd + "'");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        String message = "";

			try {
				if (rs.next()) {
				    
					Cookie loginCookie = new Cookie("userID",request.getParameter("uname"));
				    loginCookie.setMaxAge(30*60);
				    response.addCookie(loginCookie);
					
				    response.sendRedirect("index.jsp");
				} else {
					//response.sendRedirect("log.jsp");
					//message = "Niepoprawne has�o.spr�buj jeszcze raz";
					//RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
		            //PrintWriter out= response.getWriter();
		            //out.println("<font color=red>Niepoprawny Login lub/i Has�o.</font>");
		            request.setAttribute("brakpowiazania","<font color=red>Niepoprawny Login lub/i Haslo</font>") ;
		            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    }
 
}