package br.com.izumi.sherwin.dao;

import java.util.List;

public interface GenericDao<T, K> {

	void cadastrar(T entidade);
	
	T pesquisar(K codigo);
	
	List<T> listar();
}
