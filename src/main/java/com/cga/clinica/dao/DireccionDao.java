package com.cga.clinica.dao;

import java.util.List;

import com.cga.clinica.pojo.Direccion;
import com.cga.clinica.pojo.Paciente;


public interface DireccionDao {

	
	public void save(Direccion direccion);
	
	public List<Direccion> findAll(Paciente paciente);
		
	
}
