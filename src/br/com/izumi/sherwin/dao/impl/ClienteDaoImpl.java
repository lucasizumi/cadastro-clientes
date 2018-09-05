package br.com.izumi.sherwin.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.izumi.sherwin.dao.ClienteDao;
import br.com.izumi.sherwin.model.Cliente;

@Repository
public class ClienteDaoImpl extends GenericDaoImpl<Cliente, Integer> implements ClienteDao {

	@Override
	public List<Cliente> buscarPorRazaoSocial(String razaoSocial) {
		return em.createQuery("SELECT c FROM Cliente c WHERE c.razaoSocial LIKE :razaoSocial", Cliente.class)
				.setParameter("razaoSocial", razaoSocial)
				.getResultList();
	}

}
