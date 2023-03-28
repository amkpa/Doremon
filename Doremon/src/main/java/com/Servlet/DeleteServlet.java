package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Customer;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("customer_id").trim());
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			Customer customer = session.get(Customer.class, id);
			session.delete(customer);
			tx.commit();
			session.close();
			response.sendRedirect("AllBooking.jsp");

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
