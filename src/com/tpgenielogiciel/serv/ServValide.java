package com.tpgenielogiciel.serv;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tpgenielogiciel.control.Adherentcontrl;
import com.tpgenielogiciel.control.Empruntcontrol;
import com.tpgenielogiciel.control.Livrecontrol;
import com.tpgenielogiciel.model.Empruntmodel;
//import com.tpgenielogiciel.control.Utilisatcontrole;
//import com.tpgenielogiciel.model.Adherent;
//import com.tpgenielogiciel.model.Utilisatmodel;

/**
 * Servlet implementation class ServValide
 */
@WebServlet("/ServValide")
public class ServValide extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServValide() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*  intanciation des classes */ 
		
			//Utilisatmodel util1 = new Utilisatmodel();
			//Adherent adhren = new Adherent();
		//	Utilisatcontrole utilc = new Utilisatcontrole();
			//Adherentcontrl adhc = new Adherentcontrl();
 /*recuperation de l id de l utilisateur choisi dans la vue : le jsp Administrat.jsp*/
		//String idn = request.getParameter("id");
/* trnastypage ou conversion de la valeur de id recupere  en int et affectation a un utilisateur et adherent*/	
		//  int id = Integer.parseInt(idn);
		 // util1.setId(id);
		 // adhren.setIdadh(id);
/* message a envoye au jsp */	
		//String config = "validation d abonnement effectue avec succe!";
/* appel des mehtodes : validation et inscriptAd sur les objet utilisateur et adherent*/
		//utilc.validationAbon(util1);
		//adhc.inscriptAd(adhren.getIdadh());
/* renvoi ddu message de confirmation de validation*/		
		//request.setAttribute("confi", config);
/*appel de la methode qui permet d afficher la liste */		
		//request.setAttribute("messag", utilc.affichg());
		
		

		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Administrat.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sess = request.getSession();
		Map<String ,String> erreur = new HashMap<String,String>();
		
		int ide = (int)	sess.getAttribute("idutilisateur");
		
		//Adherent adhernt = new Adherent();
		Adherentcontrl adhrc = new Adherentcontrl();
		Empruntcontrol emp = new Empruntcontrol();
		Livrecontrol liv = new Livrecontrol();
		
		String id = request.getParameter("idliv");
		int idliv = Integer.parseInt(id);
		String dater = emp.dateretour();
		
		
		
		Date dat1 = adhrc.datefin(ide);
		Date dat2 = emp.converti(dater);
		
		if(dat1.after(dat2))
			if(liv.qtitestock(idliv)> emp.nbrexemplaireint(idliv))
				if(emp.emprntavant(ide, idliv)== true)
					if(erreur.isEmpty())
					 {
						  Empruntmodel empr = new Empruntmodel();
						  empr.setIdadhernt(ide);
						  empr.setIdlivr(idliv);
						  empr.setDatesortie(emp.datesortie());
						  empr.setDateretour(emp.dateretour());
						  empr.setEtatemp("demande");
						  int enr =  emp.enregistrepret(empr);
						  System.out.println("enregistrment nouveau pret "+enr);
						  
						
						response.sendRedirect("livre");}
							
					else
						response.sendRedirect("login");
				else
					erreur.put("pretavan", "vous ne pouvez pas emprunter le meme livre en plus de deuxx exemplaire");
			else
				erreur.put("quantite", "tous les exemplaires ont ete empretes");
		
		else
			erreur.put("dateadherent", "impossible d emprunter soit votre abonnement est experie soit il s expire dans 3 jours");
			
		
		
		
		
	    
	    
	    //System.out.println("***********************"+ide);
		//System.out.println("***********************"+id);
		
		//request.setAttribute("ide", ide);
		
		//this.getServletContext().getRequestDispatcher("/WEB-INF/livre.jsp").forward(request, response);
		//response.sendRedirect("livre");
		//return;
	
	
	

	}

}
