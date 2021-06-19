package verification.tourist;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/verificationServlet")
public class verificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		//end
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String touristName=request.getParameter("touristName");
		String tourID=request.getParameter("tourID");
		boolean isTrue;
		
		isTrue=touristDBUtil.validate(touristName, tourID);
		
		if(isTrue == true) {
			List<Tourist> touristDetails= touristDBUtil.getvalidation(tourID);
			request.setAttribute("touristDetails",touristDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("touristaccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('your name or tourID is incorrect');");
			out.println("location='verification.jsp'");
			out.println("</script>");
		}
		
		
	   
	}
}	
	
	


 