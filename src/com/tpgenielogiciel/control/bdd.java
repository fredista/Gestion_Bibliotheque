package com.tpgenielogiciel.control;

import java.sql.Connection;
import java.sql.DriverManager;

public class bdd {
Connection connexion;
	
	public bdd() {
		String url = "jdbc:postgresql://localhost:5432/projetlogi";
		String users = "postgres";
		String passwd = "oscar2008";
				
		
		try {
				Class.forName("org.postgresql.Driver");
				//System.out.println("driver ok");
			} 
		catch(ClassNotFoundException ex) 
			{
				System.out.println( " erreur driver"+ex.getMessage());
			}
		try {
				connexion = DriverManager.getConnection(url, users, passwd);
				//System.out.println("connection etablie");	
			}
		catch (Exception e) 
			{
				System.out.println("erreur connexion"+e.getMessage());
			}
	}
	
		public Connection connect () {
				return connexion;
			}
}
	


