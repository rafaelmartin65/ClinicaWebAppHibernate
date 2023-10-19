package com.cga.clinica.dao;

// import java.sql.ResultSet;
// import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cga.clinica.pojo.Paciente;

//@Component("PacienteDao")
@Transactional
@Repository
public class PacienteDaoImple implements PacienteDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(Paciente paciente) {
		getSession().save(paciente);
		
	}

	@Override
	public List<Paciente> findAll() {
		
		Query<Paciente> query = getSession().createQuery("From Paciente");
		return query.getResultList();
	}

	@Override
	public Paciente findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Paciente> findByNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Paciente pac) {
		getSession().update(pac);
		
	}

	@Override
	public void delete(Paciente pac) {
		getSession().delete(pac);
		
	}

	@Override
	public int[] saveAll(List<Paciente> pacientes) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
