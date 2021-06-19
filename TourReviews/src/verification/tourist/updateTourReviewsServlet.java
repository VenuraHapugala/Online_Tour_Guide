package verification.tourist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateTourReviewsServlet")
public class updateTourReviewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tID=request.getParameter("tourID");
		String fullName=request.getParameter("fullName");
		String contact=request.getParameter("contact");
		String tourName=request.getParameter("tourName");
		String days=request.getParameter("days");
		String review=request.getParameter("review");
		
		boolean isTrue;
		isTrue=touristDBUtil.updateTourReviews(tID, fullName, contact, tourName, days, review);
		
			if(isTrue==true) {
				
				List<Tourist> touristDetails=touristDBUtil.getCustomerDetails(tID);
				request.setAttribute("touristDetails", touristDetails);
				
				RequestDispatcher dis=request.getRequestDispatcher("touristaccount.jsp");
				dis.forward(request,response);
			}else {
				RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request,response);
			}
		}
		
	}


