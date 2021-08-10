package com.tpgenielogiciel.serv;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tpgenielogiciel.control.Utilisatcontrole;
import com.tpgenielogiciel.model.Utilisatmodel;

/**
 * Servlet implementation class inscription
 */
@WebServlet("/inscription")
public class inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inscription() {
        super();
        // TODO Auto-generated constructor stub
       
 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	HttpSession session = request.getSession();
	   int a = (int) session.getAttribute("idutilisateur");
	System.out.println("**************hhhhhhhhhhhhhh"+a);
		//System.out.println("**************hhhhhhhhhhhhhh");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map erreurs = new HashMap<String,String>();
		
		Utilisatmodel utilit = new Utilisatmodel();
		utilit.setNom(request.getParameter("nom"));
		utilit.setPrenom(request.getParameter("prenom"));
		utilit.setLieunssce(request.getParameter("lieun"));
		utilit.setStatus(request.getParameter("stat"));
		utilit.setPasswd(request.getParameter("motp"));
		utilit.setDatenssce(request.getParameter("datn"));
		
		
		String messag = "inscription reussie !";
		request.setAttribute("mssg", messag);
		System.out.println("dat*************1111111111111"+utilit.getDatenssce());
		Utilisatcontrole cont = new Utilisatcontrole();
		if(cont.contrlnom(utilit.getNom()))
			erreurs.put("nom", "la longueur du nom doit etre superieure a 4");
		
			if(cont.contrlnom(utilit.getNom()))
				erreurs.put("prenom", "la longueur du prenom doit etre superieur a 4");
			
				if(cont.contromotp(utilit.getPasswd()))
					erreurs.put("motpass", "le mot de pass doit etre superieur a 6");
				
					if(erreurs.isEmpty())
					{
						cont.ajout(utilit);
						String succes="un nouvel utilisateur vient d etre enregistre";
						request.setAttribute("succes", succes);
						this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
					}
					else {
						System.out.println("je suis desole");
						request.setAttribute("erreur", erreurs);
						this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
						}
					
					}

}
