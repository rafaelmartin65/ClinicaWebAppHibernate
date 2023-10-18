package com.cga.clinica.dao;

import java.util.List;

import com.cga.clinica.pojo.Paciente;

public interface PacienteDAO {

	public boolean save (Paciente paciente);

	public List<Paciente> findAll();

	public Paciente findById(int id);

	public List<Paciente> findByNombre(String nombre);
	
	public boolean update(Paciente pac);
	
	public boolean delete(int idPaciente);
	
	public int[] saveAll(List<Paciente> pacientes);
}
