package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RejestracjaPracSerwlet
 */

@WebServlet(
        description = "UpdatePD", 
        urlPatterns = { "/UpdatePD" }) 

public class UpdatePD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePD() {
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
		if(request.getParameter("pass") == ""){
			request.setAttribute("pustehaslo","<font color=red>Brak Has³a</font>") ;
        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
		} 
	
		if(!request.getParameter("pass").equals(request.getParameter("pass2"))){
			request.setAttribute("innehasla","<font color=red>Has³a nie pasuj¹ do siebie</font>") ;
        	getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
		}

		String userName = null;
		Cookie[] cookies = request.getCookies();
		
		if(cookies !=null){
			for(Cookie cookie : cookies){
		   	 if(cookie.getName().equals("userID")){
		    	userName = cookie.getValue();
		   	 }
			}
		}
		String pwd = request.getParameter("pass");
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
			i = st.executeUpdate("update PUBLIC.Pracownik set pass = '" + pwd + "' WHERE login = '" + userName +"'");
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i > 0) {
		    //session.setAttribute("userid", user);
		    response.sendRedirect("updateOK.jsp");
		   // out.print("Registration Successfull!"+"<a href='log.jsp'>Go to Login</a>");
		} else {
		    response.sendRedirect("login.jsp");
		}
		
	}

}

