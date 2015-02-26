package Servlet;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        description = "Acc", 
        urlPatterns = { "/Acc" }) 

public class Acc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Acc() {
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
		 
	
		 		String nr = request.getParameter("acc");
					    
				request.setAttribute("acc",nr) ;
	        	getServletContext().getRequestDispatcher("/accHIS.jsp").forward(request, response);
				
			
	}
}
		
	






