package com.Servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Customer;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateData
 */
public class UpdateData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateData() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String fName = request.getParameter("fname");
			String lName = request.getParameter("lname");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String location = request.getParameter("selectin");
			
			int id= Integer.parseInt(request.getParameter("customer_id").trim());
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx= s.beginTransaction();
			Customer cust= (Customer)s.get(Customer.class, id);
			
			cust.setFirst_name(fName);
			cust.setLast_name(lName);
			cust.setPhone( phone);
			cust.setEmail(email);
			cust.setAddress(address);
			cust.setLocation(location);
			cust.setDate(new Date());
			
			
			tx.commit();
			s.close();
			response.sendRedirect("AllBooking.jsp");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
