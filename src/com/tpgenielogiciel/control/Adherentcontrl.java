package com.tpgenielogiciel.control;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

import com.sun.jndi.ldap.Connection;

public class Adherentcontrl {
	
	bdd based = new bdd();
	Connection conn;
	Statement stat;
	ResultSet resul;
	
	
	// methode permettant d avoir la date du jour
	public String dateins ()
	{
		    String dateToday=null;
		    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
		    Date date = new Date();
		   
		    dateToday=dateFormat.format(date);
		    
		    return dateToday;
	}
//methode permettant d avoir la date fin d inscription
	public String  datefinad (){

		GregorianCalendar calStr1 = new GregorianCalendar(); // Création d'un nouveau calendrier
		calStr1.setTime(new Date()); // Initialisation du calendrier avec la date du jour
		calStr1.add(GregorianCalendar.YEAR, +1); // On retranche 1 année
		//String formatDate = "yyyy"; // Création du format pour afficher l'année sur 4 chiffres
		String formatDate = "dd/MM/yyyy";
		SimpleDateFormat sdf = new SimpleDateFormat(formatDate);
		// Initialisation du format de l'année sur 4 chiffres
		String dat2 = sdf.format(calStr1.getTime());
		//System.out.println(sdf.format(calStr1.getTime())); // Affichage du résultat
		//System.out.println(dat2);
		return dat2;

	}

	// methode qui convertit un string en date
	
	public Date conv (String dat) {
	
	SimpleDateFormat sfd = new SimpleDateFormat("dd/MM/yyyy");
	Date d = null;
	try {
		d = sfd.parse(dat);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	       return d;
}

	// methode tournant un boolean pour indiquer si un adherent existe ou pas	
	public boolean existeA (int idA)
	{
		boolean exista = false;
		
		try {
			stat = based.connect().createStatement();
			resul = stat.executeQuery(" select id from Adherents where id ="+idA+"");
			if(resul.next())
				exista = true;
			else
				exista = false;
				
		} catch (SQLException e) {
			System.out.println("erreur affichage de id "+e.getMessage());
		}
		return exista;
	}
   //methode permettant d'inscrire un nouveau abonne
	public void inscriptAd (int iduti)
	{
		try {
			   stat = based.connect().createStatement();
			   stat.executeUpdate("INSERT INTO adherents (dateins,datefinins,iduti) VALUES('"+dateins ()+"','"+datefinad ()+"',"+iduti+") ");
		    } 
		catch (SQLException e) 
		     {
			    System.out.println("erreur insertion nouveau adherent" +e.getMessage());
		     }
	}
	
	//methode permettant de determiner la date de fin d abonnement d un adherent
	public Date datefin (int idadh)
	{
		String datf = null;
		Date  dat = null;
		
		 try {
			 stat = based.connect().createStatement();
			  resul = stat.executeQuery("select datefinins from adherents where id = "+idadh+"");
			  if(resul.next())
				  datf = resul.getString("datefinins");
			  
			  dat = conv(datf);
			  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return dat;
	}
	
}


	