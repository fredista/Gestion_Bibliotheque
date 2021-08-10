package com.tpgenielogiciel.serv;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgenielogiciel.control.Livrecontrol;
import com.tpgenielogiciel.model.Livremodel;

/**
 * Servlet implementation class ServLivre
 */
@WebServlet("/ServLivre")
public class ServLivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServLivre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//Livremodel livmod = new Livremodel();
		Livrecontrol livc = new Livrecontrol();
	    List<Livremodel> lis ;
	    ArrayList<Livremodel> liv = new ArrayList<Livremodel>();
	   liv = livc.ensblelivre();
        request.setAttribute("listliv", livc.ensblelivre());
        
       for(int i=0;i<liv.size();i++)
        {
        	///System.out.println("coca");
        System.out.println(liv.get(i).getTitre());
        //System.out.println("cola");
        System.out.println(liv.get(i).getQuantite());
        }
        System.out.println(liv.size());
        
		this.getServletContext().getRequestDispatcher("/WEB-INF/livre.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		Livremodel liv = new Livremodel();
		String isbn = request.getParameter("isbn");
		String titre = request.getParameter("titre");
		String dat = request.getParameter("dat");
		String nom = request.getParameter("nom");
		String categorie = request.getParameter("categorie");
		String quantit = request.getParameter("quantite");
		
		String mssag = "un livre a ete repere";
		String mssage ="";
		
		liv.setIsbn(isbn);
		liv.setTitre(titre);
		liv.setDateEdit(dat);
		liv.setNomAut(nom);
		liv.setCategorie(categorie);
		liv.setQuantite(quantit);
		
		
		Livrecontrol livc = new Livrecontrol();
			if(livc.AjouterLivre(liv) == 0)
			{ mssage="echec ajout";
				request.setAttribute("message", mssage);
			}
			
			else {
				mssage="un livre vient d etre ajouter avec succes";
				request.setAttribute("message",mssage );
				
			}
				
			this.getServletContext().getRequestDispatcher("/WEB-INF/livre.jsp").forward(request, response);
				
	}

}
