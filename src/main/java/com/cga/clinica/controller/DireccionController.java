package com.cga.clinica.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cga.clinica.pojo.Direccion;
import com.cga.clinica.pojo.Paciente;
import com.cga.clinica.service.DireccionService;
import com.cga.clinica.service.PacienteService;

@Controller
@SessionAttributes("paciente")
public class DireccionController {
	
	@Autowired
	private PacienteService pacienteService;
	
	@Autowired
	private DireccionService direccionService;
	
	@RequestMapping("/direccion/{paciente_id}")
	public String getAll(Model model, 
			@ModelAttribute("resultado") String resultado, 
			@PathVariable("paciente_id") int id) {
		
		Paciente paciente = pacienteService.findById(id);
		model.addAttribute("paciente", paciente);
		model.addAttribute("direccion", new Direccion());
		model.addAttribute("resultado", resultado);
		model.addAttribute("direcciones", direccionService.findAll(id));
		
		return "direccion";
	}
	
	@RequestMapping("/direccion/guardar")
	public String guardar(Model model, RedirectAttributes ra,
			@ModelAttribute("direccion") Direccion direccion,
			@ModelAttribute("paciente") Paciente paciente) {
		
		direccionService.save(paciente, direccion);
		ra.addFlashAttribute("resultado", "Cambios guardados");
		
		return "redirect:/direccion/"
				+ paciente.getIdPaciente();
	}
	

}
