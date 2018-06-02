package com.gc.TaskList.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.gc.TaskList.entity.User;

@Repository
@Transactional
public class UserDao implements BaseDao<User> {
	
	@PersistenceContext
	EntityManager eManager;

	@Override
	public User findById(int id) {
		return eManager.find(User.class, id);
	}
	
	public List<User> findByName(String name, String password) {
		TypedQuery<User> namedQuery = eManager.createNamedQuery("find_by_name", User.class)
	    .setParameter("custName", name) .setParameter("custPassword", password);
		return namedQuery.getResultList();
	}
	
	@Override
	public List<User> listAll() {
		TypedQuery<User> namedQuery = eManager.createNamedQuery("list_all", User.class);
		return namedQuery.getResultList();
	}

	@Override
	public User update(User obj) {
		return eManager.merge(obj);
	}

	@Override
	public void delete(int id) {
		eManager.remove(findById(id));
	}

}
