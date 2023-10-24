package com.cga.clinica.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cga.clinica.pojo.Direccion;
import com.cga.clinica.pojo.Paciente;


@Transactional
@Repository
public class DireccionDaoImple implements DireccionDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	
	@Override
	public void save(Direccion direccion) {
		// save direction
		getSession().save(direccion);
		
	}

	@Override
	public List<Direccion> findAll(Paciente paciente) {
		// get all pacientes
		Criteria crit = getSession()
				.createCriteria(Direccion.class)
				.setFetchMode("paciente", FetchMode.JOIN)
				.add(Restrictions.eq("paciente.idPaciente", paciente.getIdPaciente()))
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return crit.list();
	}
	
	

}
