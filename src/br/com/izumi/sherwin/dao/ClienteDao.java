package br.com.izumi.sherwin.dao;

import java.util.List;

import br.com.izumi.sherwin.model.Cliente;

public interface ClienteDao extends GenericDao<Cliente, Integer> {

	List<Cliente> buscarPorRazaoSocial(String razaoSocial);
	
}
