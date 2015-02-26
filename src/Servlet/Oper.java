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
@WebServlet(description = "Oper", urlPatterns = { "/Oper" })
public class Oper extends HttpServlet {
	Connection conn; // our connnection to the db - presist for life of program

	private static final long serialVersionUID = 1L;

	public void init() throws ServletException {
		try {
			Class.forName("org.hsqldb.jdbcDriver");
			conn = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/",
					"sa", "");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("uname") == "") {

			request.setAttribute("pustepole1",
					"<font color=red>Pole Login nie moze byc puste</font>");
			getServletContext().getRequestDispatcher("/login.jsp").forward(
					request, response);
		}

		if (request.getParameter("pass") == "") {

			request.setAttribute("pustepole1",
					"<font color=red>Pole Haslo nie moze byc puste</font>");
			getServletContext().getRequestDispatcher("/login.jsp").forward(
					request, response);
		}
		// get request parameters for userID and password
		String rach = request.getParameter("nrach");
		String kli = request.getParameter("nclient");
		String kwo = request.getParameter("credit");
		//Double kwota = Double.parseDouble(kwo);
		Statement st = null;
		try {
			st = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ResultSet rs = null;
		ResultSet rss = null;
		try {
			rs = st.executeQuery("select * from PUBLIC.TABELA_GLOWNA WHERE NR_RACH = '"
					+ rach
					+ "' and nr_klient = '" + kli + "'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String message = "";

		try {
			if (rs.next()) {
				int i = 0;
				
				rss = st.executeQuery("select * from PUBLIC.TABELA_GLOWNA WHERE NR_RACH = '"
						+ rach
						+ "' and stan_konta > " + kwo );
				
				if (rss.next()) {
				
				i = st.executeUpdate("update PUBLIC.TABELA_GLOWNA set stan_konta = stan_konta - "
								+ kwo
								+ " WHERE NR_RACH = '"
								+ rach
								+ "' and nr_klient = '" + kli + "'");
				
					if (i > 0) {
							response.sendRedirect("operOK.jsp");
					}
					else {
						//response.sendRedirect("emptyACC.jsp");
						System.out.print("ojæ \n");
					}
				}else {
					response.sendRedirect("emptyACC.jsp");
				}

				/* P */

			} else {
				response.sendRedirect("invalidACC.jsp");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}