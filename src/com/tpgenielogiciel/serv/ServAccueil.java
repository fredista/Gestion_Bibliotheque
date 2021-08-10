package com.tpgenielogiciel.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgenielogiciel.control.Livrecontrol;
import com.tpgenielogiciel.model.Livremodel;

/**
 * Servlet implementation class ServAccueil
 */
@WebServlet("/ServAccueil")
public class ServAccueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServAccueil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String catego = request.getParameter("categorie");
		String titr = request.getParameter("titre");
		
		//ArrayList<Livremodel> lis = new ArrayList<Livremodel>();
		
		Livrecontrol liv = new Livrecontrol();
		//liv.rechercheLiv(catego, titr);
		int nbre = liv.rechercheLiv(catego, titr).size();
		
		request.setAttribute("nmbre",nbre);
		request.setAttribute("rechliv",liv.rechercheLiv(catego, titr));
			
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
		
	}

}
