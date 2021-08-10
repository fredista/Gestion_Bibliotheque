package com.tpgenielogiciel.model;

public class Empruntmodel {
	
	int id;
	int idadhernt;
	int idlivr;
	String datesortie;
	String dateretour;
	String etatemp;
	
	
	public int getId() {
		return id;
	}
	public int getIdadhernt() {
		return idadhernt;
	}
	public int getIdlivr() {
		return idlivr;
	}
	public String getDatesortie() {
		return datesortie;
	}
	public String getDateretour() {
		return dateretour;
	}
	public String getetatemp()
	{
		return etatemp;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setIdadhernt(int idadhernt) {
		this.idadhernt = idadhernt;
	}
	
	public void setIdlivr(int idlivr) {
		this.idlivr = idlivr;
	}
	
	public void setDatesortie(String datesortie) {
		this.datesortie = datesortie;
	}
	
	public void setDateretour(String dateretour) {
		this.dateretour = dateretour;
	}
	public void setEtatemp(String etatem)
	{
		this.etatemp = etatem;
	}
	
	public Empruntmodel() {
		
	}
	
	public Empruntmodel(int idadhernt, int idlivr, String datesortie, String dateretour) {
		
		this.idadhernt = idadhernt;
		this.idlivr = idlivr;
		this.datesortie = datesortie;
		this.dateretour = dateretour;
	}
	
	
	
	
	

}
