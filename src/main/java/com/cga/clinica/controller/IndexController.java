package com.cga.clinica.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.bind.support.SessionStatus;

@SessionAttributes("resultado")
@Controller
public class IndexController {
	
	//Crear un metodo que acepte una peticion http y nos resueltva un nombre logico (index)
	//Aplicar en el metodo un model, para que persista
	//Es una interfaz que nos permite definir atributos en el modelo
	@RequestMapping("/")
	public String mostrarIndex (Model model) {
		System.out.println("XDXDXDXDXDXDXDXD");
//		model.addAttribute("resultado", "Resultado de la session");
		return "index";
	}
	
	@RequestMapping("/otra")
	public String mostrarOtrarPag(HttpSession session) {
		System.out.println("Otra pagina!!!");
//		session.setAttribute("mensaje", "Mensaje de otra pagina");
//		model.addAttribute("mensaje", "Mensaje de otra pagina");
		return "otra";
	}
	
	/*@RequestMapping("/paciente")
	public String mostrarPaciente(SessionStatus status) {
		System.out.println("Pagina Paciente");
		status.setComplete();
		return "paciente";
	}*/
}
