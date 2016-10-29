/**
 * 
 */
package org.pjaygroup.employee.reports;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.pjaygroup.employee.common.Employee;

/**
 * @author Vijay Konduru
 * 
 */
@WebServlet(name = "employeereports", urlPatterns = { "/employee_reports" }, loadOnStartup = 1)
public class EmployeeReportsServlet extends HttpServlet {

	private static final long serialVersionUID = -6253937369879500061L;

	// This is for demo purpose only, this should be done properly for solving
	// concurrency issue
	private List<Employee> employees = new ArrayList<Employee>();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("employees", employees);
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("employee_reports.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("You made a call to doPost method of servlet");
		resp.getWriter().println(
				"<h1>Hello in HTML via doPost servlet method</h1>");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		employees.add(new Employee(143567L, "Vijay", "Konduru",
				"Pjay Group Inc"));
		employees.add(new Employee(143908L, "Andy", "Labat", "V Group Inc"));
		employees
				.add(new Employee(143678L, "Pavel", "Zolnikov", "P Group Inc"));
	}

}
