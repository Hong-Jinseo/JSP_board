package board.home;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	private Statement stmt;
	
	private String name, email, pw, pw_chk, phone1, phone2, phone3, gender, yy, mm, dd;
       
    public JoinOk() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("EUC-KR");
		
		name = request.getParameter("name");
		email = request.getParameter("email");
		pw = request.getParameter("pw");
		pw_chk = request.getParameter("pw_chk");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3"); 
		gender = request.getParameter("gender"); 
		yy = request.getParameter("yy");
		mm = request.getParameter("mm");
		dd = request.getParameter("dd"); 
		
		String phone_num = phone1 + "-" + phone2 + "-" + phone3;
		String birth = yy+mm+dd;
		
		String query = "insert into member values('"+name+"', '"+email+"', '"+pw+"', '"+phone_num+"', '"+gender+"', '"+birth+"')";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			stmt = connection.createStatement();
			
			
			//int i = 
			stmt.executeUpdate(query);		//몇 개의 데이터가 들어갔는지 반환
			/*
			if(i==1) {
				System.out.println("insert successes");
				response.sendRedirect("joinResult.jsp");
			}
			else {
				System.out.println("insert fail");
				response.sendRedirect("join.html");
			}
			*/
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try{
				if(stmt != null) stmt.close();
				if(connection != null) connection.close();
			}catch(Exception e) {}
			finally {
				response.sendRedirect("joinResult.jsp");
			}
		}
	}
}










