package br.com.izumi.sherwin.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.izumi.sherwin.dao.GenericDao;

public class GenericDaoImpl<T, K> implements GenericDao<T, K> {

	@PersistenceContext
	protected EntityManager em;
	
	private Class<T> classe;
	
	@SuppressWarnings("unchecked")
	public GenericDaoImpl() {
		classe = (Class<T>) ((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	@Override
	public void cadastrar(T entidade) {
		em.persist(entidade);
		
	}

	@Override
	public T pesquisar(K codigo) {
		return em.find(classe, codigo);
	}

	@Override
	public List<T> listar() {
		return em.createQuery("from " + classe.getName(), classe).getResultList();
	}

}
