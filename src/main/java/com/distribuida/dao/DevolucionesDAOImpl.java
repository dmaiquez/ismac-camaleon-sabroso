package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Devoluciones;

@Repository
public class DevolucionesDAOImpl implements DevolucionesDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
    @Transactional
	public List<Devoluciones> findAll() {
		// TODO Auto-generated method stub
    	
		
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Devoluciones",Devoluciones.class).getResultList();
	}

	@Override
	@Transactional

	public Devoluciones findOne(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Devoluciones.class, id);
	}
	@Override
	@Transactional

	public void add(Devoluciones devoluciones) {

		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(devoluciones);
	
	}

	@Override
	@Transactional

	public void up(Devoluciones devoluciones ) {

		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(devoluciones);
	
	}

	@Override
	@Transactional

	public void del(int id) {

		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	
	}

}