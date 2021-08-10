package com.tpgenielogiciel.model;

// classe livre
public class Livremodel {
	
	private int idLivre;
	private String titre;
	private String isbn;
	private String dateEdit;
	private String nomAut;
	private String categorie;
	private String quantite;
;
	
	
	public int getIdLivre() {
		return idLivre;
	}
	
	public String getTitre() {
		return titre;
	}
	public String getQuantite() {
		return quantite;
	}
	
	public String getIsbn() {
		return isbn;
	}
	
	public String getDateEdit() {
		return dateEdit;
	}
	
	public String getNomAut() {
		return nomAut;
	}
	
	

	public String getCategorie() {
		return categorie;
	}

	public void setIdLivre(int idLivre) {
		this.idLivre = idLivre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public void setDateEdit(String dateEdit) {
		this.dateEdit = dateEdit;
	}

	public void setNomAut(String nomAut) {
		this.nomAut = nomAut;
	}
	public void setQuantite(String quantite) {
		this.quantite = quantite;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	

	public Livremodel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Livremodel(int idLivre, String titre, String isbn, String dateEdit, String nomAut, String categorie,
			String quantite) {
		super();
		this.idLivre = idLivre;
		this.titre = titre;
		this.isbn = isbn;
		this.dateEdit = dateEdit;
		this.nomAut = nomAut;
		this.categorie = categorie;
		this.quantite = quantite;
	}

	
	
	
	
	
	
	

}
