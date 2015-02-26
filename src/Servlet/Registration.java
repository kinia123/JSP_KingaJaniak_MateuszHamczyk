package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RejestracjaPracSerwlet
 */

@WebServlet(
        description = "Registration", 
        urlPatterns = { "/Registration" }) 

public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

		
		 
		 if (request.getParameter("fname") == ""){
				request.setAttribute("brakimie","<font color=red>Brak Imienia</font>") ;
	        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			}
		 
		 if (request.getParameter("lname") == ""){
				request.setAttribute("braknazw","<font color=red>Brak Nazwiska</font>") ;
	        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			}
		 if (request.getParameter("adress") == ""){
				request.setAttribute("brakadres","<font color=red>Brak Adresu</font>") ;
	        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			}
		 
		 if (request.getParameter("phone") == ""){
				request.setAttribute("braktel","<font color=red>Brak numeru Telefonu</font>") ;
	        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			}
		 if (request.getParameter("email") == ""){
				request.setAttribute("brakemail","<font color=red>Brak Email</font>") ;
	        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			}
		 
		
		 if (request.getParameter("uname") == ""){
			request.setAttribute("braklogin","<font color=red>Brak Loginu</font>") ;
        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
		}
		if(request.getParameter("pass") == ""){
			request.setAttribute("pustehaslo","<font color=red>Brak Has³a</font>") ;
        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
		} 
	
		if(!request.getParameter("pass").equals(request.getParameter("pass2"))){
			request.setAttribute("innehasla","<font color=red>Has³a nie pasuj¹ do siebie</font>") ;
        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
		}

		
		String user = request.getParameter("uname");    
		String pwd = request.getParameter("pass");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String adress = request.getParameter("adress");
		String phone = request.getParameter("phone");
		try {
			Class.forName("org.hsqldb.jdbcDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Statement st = null;
		try {
			st = con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//ResultSet rs;
		int i = 0;
		try {
			i = st.executeUpdate("insert into PUBLIC.Pracownik(imie, nazwisko, adres, telefon, email, login, pass) "
					+ " values ('" + fname + "','" + lname + "','" + adress + "','" + phone + "','" + email + "','" + user + "','" + pwd + "')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i > 0) {
		    //session.setAttribute("userid", user);
		    response.sendRedirect("registrationOK.jsp");
		   // out.print("Registration Successfull!"+"<a href='log.jsp'>Go to Login</a>");
		} else {
		    response.sendRedirect("login.jsp");
		}
		
	}

}




/*

String user = request.getParameter("uname");    
String pwd = request.getParameter("pass");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String adress = request.getParameter("adress");
String phone = request.getParameter("phone");
Class.forName("org.hsqldb.jdbcDriver");
Connection con = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/", "sa","");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into PUBLIC.members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
if (i > 0) {
    //session.setAttribute("userid", user);
    response.sendRedirect("welcome.jsp");
   // out.print("Registration Successfull!"+"<a href='log.jsp'>Go to Login</a>");
} else {
    response.sendRedirect("log.jsp");
}

*/