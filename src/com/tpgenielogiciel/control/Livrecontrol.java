package com.tpgenielogiciel.control;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.jndi.ldap.Connection;
import com.tpgenielogiciel.model.Livremodel;

public class Livrecontrol {
	
	boolean existceliv;
	bdd connec;
	ResultSet resultat;
	int retourins;
	Statement stat;
	
	
	/* methode de verification d un livre*/
	
	public Livrecontrol() {
		super();
		// TODO Auto-generated constructor stub
		
		connec = new bdd();
	}


	public boolean existnc (Livremodel livre)
	{
		try {
			PreparedStatement ps = connec.connect().prepareStatement("select id from livre where isbn = ? and titre = ?");
			ps.setString(1, livre.getTitre());
			ps.setString(2,livre.getIsbn());
			resultat = ps.executeQuery();
			if(resultat.next())
				existceliv = true;
			else
				existceliv = false;
			
			
			System.out.println("recherche id fini retour a la base");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("erreur de recherche id du livre"+e.getMessage());
		}
		return existceliv;
	}
	
	/*methode qui permet l ajout d un nouveau livre*/
	
	public int AjouterLivre(Livremodel livre)
	{
		try
		{
			PreparedStatement ps = connec.connect().prepareStatement("INSERT INTO livres (titre,isbn,dat,nom,categorie,quantite) VALUES(?,?,?,?,?,?)");
			
			String titr = livre.getTitre();
			String isb = livre.getIsbn();
			String date = livre.getDateEdit();
			String nom = livre.getNomAut();
			String catg = livre.getCategorie();
			String quantit = livre.getQuantite();
			
			ps.setString(1, titr);
			ps.setString(2, isb);
			ps.setString(3, date);
			ps.setString(4, nom);
			ps.setString(5, catg);
			ps.setString(6, quantit);
			
			retourins = ps.executeUpdate();
			
		}
			catch (SQLException ex)
		   {
				System.out.println("erreur ajout nouveau"+ex.getMessage());
		   }
		
		return retourins;
	}
	
	/*methode permettant de renvoyer la liste des  listes contenus dans la base de donnees*/
	
	public ArrayList<Livremodel> ensblelivre ()
	{
		ArrayList<Livremodel> livr = new ArrayList <Livremodel>();
		
		try {
			//PreparedStatement ps = connec.connect().prepareStatement("select * from livres");
			//r//esultat = ps.executeQuery();
			//Livremodel livres = new Livremodel();
			
			stat = connec.connect().createStatement();


			//resultat = stat.executeQuery("select id,titre,isbn,dat,nom,categorie,quantite from livres");
			  resultat = stat.executeQuery("select * from livres");
			while(resultat.next())			
			{
				Livremodel liv = new Livremodel();
				
				liv.setIdLivre(resultat.getInt("id"));
				liv.setTitre(resultat.getString("titre"));
				liv.setIsbn(resultat.getString("isbn"));
				liv.setDateEdit(resultat.getString("dat"));
				liv.setNomAut(resultat.getString("nom"));
				liv.setCategorie(resultat.getString("categorie"));
				liv.setQuantite(resultat.getString("quantite"));
				
				//System.out.println("hum********"+livres.getCategorie());
				
				livr.add(liv);
				
			}
			    //ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  return livr;
	}
// methode permettant de recherche un livre a partir de la valeur ccombox et un input 
	 
	public ArrayList<Livremodel> rechercheLiv(String valcom,String valinput)
	{
		ArrayList<Livremodel> lisliv = new ArrayList<Livremodel>();
		
		try {
			//PreparedStatement ps = connec.connect().prepareStatement("select * from livres where categorie ='"+valcom+"' and titre ='"+valinput+"'");
			//resultat = ps.executeQuery();
			
			//System.out.println("nous faisons!!!!!!!");
			
			stat = connec.connect().createStatement();
			  resultat = stat.executeQuery("select * from livres  where titre = '"+valinput+"' and categorie = '"+valcom+"' ");
		 while(resultat.next())
			{
				Livremodel livr = new Livremodel();
				System.out.println("nous faisons!!!!!!!");
				
				livr.setIdLivre(resultat.getInt("id"));
				livr.setTitre(resultat.getString("titre"));
				livr.setIsbn(resultat.getString("isbn"));
				livr.setDateEdit(resultat.getString("dat"));
				livr.setNomAut(resultat.getString("nom"));
				livr.setCategorie(resultat.getString("categorie"));
				livr.setQuantite(resultat.getString("quantite"));
				
				System.out.println("nous faisons!!!!!!!");
				
				lisliv.add(livr);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("tout est fait");
		return lisliv;
	}
		
	// methode permettant de connaitre la d un livre en stock
	
	public int qtitestock(int idliv)
	{
		int qtite =0;
		
		try {
			stat = connec.connect().createStatement();
			resultat = stat.executeQuery("select quantite from livres where id = "+idliv+"");
			
			if(resultat.next())
				qtite = Integer.parseInt(resultat.getString("quantite")); 
		} catch (SQLException e) {
			System.out.println("erreur de conversion"+e.getMessage());
		}
		
			return qtite;
	}
	
	
}
