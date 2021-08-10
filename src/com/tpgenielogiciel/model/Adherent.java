package com.tpgenielogiciel.model;

public class Adherent {
	
	private int idadh;
	private String datedebut;
	private String datefin;
	private int idutil;
	
	public void setIdadh(int idadh) {
		this.idadh = idadh;
	}
	
	public void setDatedebut(String datedebut) {
		this.datedebut = datedebut;
	}
	
	public void setDatefin(String datefin) {
		this.datefin = datefin;
	}
	
	public void setIdutil(int idutil) {
		this.idutil = idutil;
	}
	
	public int getIdadh() {
		return idadh;
	}
	
	public String getDatedebut() {
		return datedebut;
	}
	
	public String getDatefin() {
		return datefin;
	}
	
	public int getIdutil() {
		return idutil;
	}

	
	public Adherent() {
		
	}

	public Adherent(int idadh, String datedebut, String datefin, int idutil) {
		super();
		this.idadh = idadh;
		this.datedebut = datedebut;
		this.datefin = datefin;
		this.idutil = idutil;
	}
	
	
	

}
