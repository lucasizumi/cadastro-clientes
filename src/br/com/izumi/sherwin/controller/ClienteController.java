package br.com.izumi.sherwin.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.izumi.sherwin.dao.ClienteDao;
import br.com.izumi.sherwin.model.Cliente;

@Controller
@RequestMapping("/cliente")
public class ClienteController {

	@Autowired
	private ClienteDao clienteDao;
	
	@GetMapping("cadastrar")
	public ModelAndView abrirForm(){
		return new ModelAndView("cliente/cadastro")
						.addObject("cliente", new Cliente());
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processarForm(@Valid Cliente cliente,
			BindingResult result,
			RedirectAttributes redirect){
		
		if (result.hasErrors()){
			return new ModelAndView("cliente/cadastro");
		}else{
			clienteDao.cadastrar(cliente);
			ModelAndView retorno = new ModelAndView("redirect:/cliente/listar");
			
			redirect.addFlashAttribute("msg", "Cliente cadastrado!");
			return retorno;
		}
	}
	
	@GetMapping("listar")
	public ModelAndView listagem(){
		ModelAndView retorno = 
				new ModelAndView("cliente/lista");
		retorno.addObject("clientes",clienteDao.listar());
		return retorno;
	}
	
	@GetMapping("buscar")
	public ModelAndView buscaPorRazaoSocial(@RequestParam("razaoSocial") String razaoSocial) {
		ModelAndView retorno = new ModelAndView("cliente/lista");
		
		if(!"".equals(razaoSocial)) {
			retorno.addObject("clientes", clienteDao.buscarPorRazaoSocial(razaoSocial));
		} else {
			retorno.addObject("clientes", clienteDao.listar());
		}
		
		return retorno;
	}
}
