package com.cga.clinica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cga.clinica.dao.DireccionDao;
import com.cga.clinica.dao.PacienteDao;
import com.cga.clinica.pojo.Direccion;
import com.cga.clinica.pojo.Paciente;

@Service
public class DireccionService {
	
	@Autowired
	private PacienteDao pacienteDao;
	
	@Autowired
	private DireccionDao direccionDao;
	
	public void save(Paciente paciente, Direccion direccion) {
		
		direccion.setPaciente(paciente);
		direccionDao.save(direccion);
	}
	
	public List<Direccion> findAll(int id){
		Paciente paciente = pacienteDao.findById(id);
		return direccionDao.findAll(paciente);
	}

//	public void saveOrUpdate(Direccion direccion) {
//		if (direccion.getId_direccion() == 0) {
//			//Se puede colocar un syso to.String para que se vea que hace
//			// Insert
//			direccionDao.save(direccion);
//		} else {
//			// update
//			direccion.update(direccion);// REvisar esta instrucción
//		}
//	}
//
//	public void delete(int id) {
//		//instanciar
//		
//		Direccion dir = direccionDao.findById(id);
//		direccionDao.delete(dir);
//	}
	
}
