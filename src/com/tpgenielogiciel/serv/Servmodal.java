package com.tpgenielogiciel.serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgenielogiciel.control.Adherentcontrl;
import com.tpgenielogiciel.model.Adherent;

/**
 * Servlet implementation class Servmodal
 */
@WebServlet("/Servmodal")
public class Servmodal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servmodal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Adherent adh = new Adherent();
		Adherentcontrl adhcnt = new Adherentcontrl();
		//Date = adhcnt.conv(adhcnt.dateMoinsUneAnnee());
		//System.out.println("essai date delta********* "+adhcnt.dateMoinsUneAnnee());
		//adhcnt.dateMoinsUneAnnee();
		this.getServletContext().getRequestDispatcher("/WEB-INF/livre.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
