package com.tpgenielogiciel.model;




public class Utilisatmodel {
	
	// ci-dessous les differents attributs de la classe
		private int id;
		private String nom;
		private String prenom;
		private String lieunssce;
		private String statut;
		private String datenssce;
		private String passwd;
		private boolean access;
		
		
		
		// toutes methodes commencant par set representes les setters pour l initiation des attributs
		
		public void setNom(String nom) {
			this.nom = nom;
		}
		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}
		public void setLieunssce(String lieunssce) {
			this.lieunssce = lieunssce;
		}
		public void setStatus(String statut) {
			this.statut = statut;
		}
		public void setDatenssce(String datenssce) {
			this.datenssce = datenssce;
		}
		public void setAccess(boolean access) {
			this.access = access;
		}
		
		public void setId(int id) {
			this.id = id;
		}
		
		
		public void setStatut(String statut) {
			this.statut = statut;
		}
		public void setPasswd(String passwd) {
			this.passwd = passwd;
		}
		
		// les methodes commencan par get representes les getters pour la recuperation des attributs
		public String getNom() {
			return nom;
		}
		public String getPrenom() {
			return prenom;
		}
		public String getLieunssce() {
			return lieunssce;
		}
		public String getStatut() {
			return statut;
		}
		public String getDatenssce() {
			return datenssce;
		}
		public boolean isAccess() {
			return access;
		}
		
	    public int getId() {
			return id;
		}
	    public String getPasswd() {
			return passwd;
		}
		
		
	// contructeur sans attributs  	
		public Utilisatmodel() {
			super();
		}
		// contructeur avec attribut de la classe	
		public Utilisatmodel(int id, String nom, String prenom, String lieunssce, String statut, String datenssce,
				String passwd, boolean access) {
			super();
			this.id = id;
			this.nom = nom;
			this.prenom = prenom;
			this.lieunssce = lieunssce;
			this.statut = statut;
			this.datenssce = datenssce;
			this.passwd = passwd;
			this.access = access;
		}
		

}
