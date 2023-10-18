package com.cga.clinica.dao;

// import java.sql.ResultSet;
// import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
// import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSourceUtils;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.cga.clinica.pojo.Paciente;

@Component("PacienteDao")
public class PacienteDaoImple implements PacienteDAO {

	/*
	 * Plantilla para evitar inyeccion de sql,
	 * La clase NamedParameterJdbcTemplate es un wrapper sobre la clase JdbcTemplate
	 * que se instancia pasándole como argumento el DataSource en el constructor.
	 * Lo que pretende es resolver los problemas de tener que trabajar con
	 * caracteres marcadores de posición («?») dentro de las sentencias SQL,
	 * permitiendo en su lugar utilizar nombres para los parámetros.
	 */
	private NamedParameterJdbcTemplate jdbcTemplate;

	// Hace referencia hacia el fichero config.xml, datasourece, va a instaciar ese
	// bean
	@Autowired
	private void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public boolean save(Paciente paciente) {

		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("idPaciente", paciente.getIdPaciente());
		map.addValue("nombre", paciente.getNombre());
		map.addValue("apellido", paciente.getApellidos());
		map.addValue("edad", paciente.getEdad());
		map.addValue("telf", paciente.gettelefono());
		map.addValue("direccion", paciente.getDireccion());
		map.addValue("historial", paciente.getHistorial());

		return jdbcTemplate.update("insert into paciente "
				+ "VALUES (:idPaciente, :nombre, :apellido, :edad, :telf, :direccion, :historial)", map) == 1;
	}

	@Override
	public List<Paciente> findAll() {
		return jdbcTemplate.query("select * from paciente", new PacienteRowMapper() {});
	}

	@Override
	public Paciente findById(int id) {
		return jdbcTemplate.queryForObject("SELECT * FROM PACIENTE WHERE ID_PACIENTE = :idPaciente", new MapSqlParameterSource("idPaciente", id), new PacienteRowMapper() {});
	}

	@Override
	public List<Paciente> findByNombre(String nombre) {
		return jdbcTemplate.query("SELECT * FROM PACIENTE WHERE NOMBRE LIKE :nombre ", new MapSqlParameterSource("nombre", "%"+nombre+"%"), new PacienteRowMapper() {});
	}

	@Override
	public boolean update(Paciente pac) {
		return jdbcTemplate.update("UPDATE PACIENTE SET nombre=:nombre, apellido=:apellido, edad=:edad, telf=:telf, historial=:historial WHERE id_paciente=:idPaciente", new BeanPropertySqlParameterSource(pac)) == 1;
	}

	@Override
	public boolean delete(int idPaciente) {
		// TODO Auto-generated method stub
		return jdbcTemplate.update("delete from Paciente where id_Paciente=:idPaciente", new MapSqlParameterSource("idPaciente", idPaciente)) == 1;
	}

	@Transactional //todo los que se haga dentro del metodo si algun proceso falla, falla el proceso
	@Override
	public int[] saveAll(List<Paciente> pacientes) {
		SqlParameterSource[] batchArgs = SqlParameterSourceUtils.createBatch(pacientes.toArray());
		
		return jdbcTemplate.batchUpdate("insert into Paciente (id_paciente, nombre, apellido, edad, telf, historial)"
				+ "values (:idPaciente, :nombre, :apellido, :edad, :telf, :historial)", batchArgs);
	}

	

}
