package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ProduktPokazWszystko
 */
@WebServlet(
        description = "Account", 
        urlPatterns = { "/Account" }) 


public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Connection conn;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Account() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String user = request.getParameter("uname");
        //String pwd = request.getParameter("pass");
            
			Statement st = null;
			try {
				st = conn.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ResultSet rs = null;
			try {
				rs = st.executeQuery("select * from PUBLIC.Pracownik ");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        String message = "";
        //q.getResultList();
        
        
        
        /*if(!st.getResultSet().isEmpty()) {
        List<Rachunek> productlist = q.getResultList();
	    

    		request.setAttribute("account", productlist);
    		request.getRequestDispatcher("/showaccount.jsp").forward(request, response);
    	}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	}
}



