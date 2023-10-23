package com.cga.clinica.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name = "direccion")
public class Direccion {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_direccion;
	private String calle;
	private int cp;
	private String ciudad;

	@ManyToOne
	@JoinColumn(name= "paciente_id")   //Foreign key
	private Paciente paciente;

	
	public Direccion() {

	}

	public Direccion(String calle, int cp, String ciudad) {
		this.calle = calle;
		this.ciudad = ciudad;
		this.cp = cp;
	}

	public int getId_direccion() {
		return id_direccion;
	}

	public void setId_direccion(int id_direccion) {
		this.id_direccion = id_direccion;
	}

	public String getCalle() {
		return calle;
	}

	public void setCalle(String calle) {
		this.calle = calle;
	}

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	@Override
	public String toString() {
		return "Direccion [id_direccion=" + id_direccion + ", calle=" + calle + ", cp=" + cp + ", ciudad=" + ciudad
				+ "]";
	}

}