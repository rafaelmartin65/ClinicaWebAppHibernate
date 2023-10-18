package com.cga.clinica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cga.clinica.dao.PacienteDAO;
import com.cga.clinica.pojo.Paciente;

@Service
public class PacienteService {

	@Autowired
	private PacienteDAO pacienteDAO;

	public void save(Paciente paciente) {
		pacienteDAO.save(paciente);
	}

	public List<Paciente> findAll() {
		return pacienteDAO.findAll();

	}

	public Paciente findById(int id) {
		return pacienteDAO.findById(id);

	}

	public void saveOrUpdate(Paciente paciente) {
		if (paciente.getIdPaciente() == 0) {
			//Se puede colocar un syso to.String para que se vea que hace
			// Insert
			pacienteDAO.save(paciente);
		} else {
			// update
			pacienteDAO.update(paciente);
		}
	}

	public void delete(int id) {
		//instanciar
		pacienteDAO.delete(id);
	}

}
