package verification.tourist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteTourReviewServlet")
public class DeleteTourReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tID=request.getParameter("tourID");
		boolean isTrue;
		
		isTrue = touristDBUtil.deleteTourReview(tID);
		
		if(isTrue==true) {
				
				RequestDispatcher dis=request.getRequestDispatcher("touristaccount.jsp");
				dis.forward(request,response);
			}else {
				List<Tourist> touristDetails=touristDBUtil.getCustomerDetails(tID);
				request.setAttribute("touristDetails", touristDetails);
				RequestDispatcher dis2=request.getRequestDispatcher("touristaccount.jsp");
				dis2.forward(request,response);
			}
		}
	}


