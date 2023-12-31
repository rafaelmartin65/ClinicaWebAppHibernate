package com.cga.clinica.pojo;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="Paciente")
public class Paciente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idPaciente;
	
	@Column(name="nombre", nullable = false)
	private String nombre;
	private String apellidos;
	private int edad;
	private int telefono;
	
	private String historial;
	
	@OneToMany(mappedBy= "paciente")
	private Set<Direccion> direccion;
	


	
	public void imprimirHistorial() {
		System.out.println("Paciente con Historial");
	}

	public Paciente() {
	}

	public Paciente(int idPaciente, String nombre, String apellidos, int edad, int telefono, String historial) {
		this.idPaciente = idPaciente;
		this.nombre = nombre;
		this.apellidos= apellidos;
		this.edad = edad;
		this.telefono = telefono;
		
		this.historial = historial;
	}

	public int getIdPaciente() {
		return idPaciente;
	}

	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public int gettelefono() {
		return telefono;
	}

	public void settelefono(int telf) {
		this.telefono = telf;
	}

	

	public Set<Direccion> getDirecciones() {
		return direccion;
	}

	public void setDireccion(Set<Direccion> direcciones) {
		this.direccion = direcciones;
	}

	
	public String getHistorial() {
		return historial;
	}

	public void setHistorial(String historial) {
		this.historial = historial;
	}

	@Override
	public String toString() {
		return "Paciente [idPaciente=" + idPaciente + ", nombre=" + nombre + ", apellidos=" + apellidos + ", edad=" + edad
				+ ", telefono=" + telefono + ", historial=" + historial + "]";
	}

}
