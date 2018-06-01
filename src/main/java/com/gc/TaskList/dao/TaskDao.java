package com.gc.TaskList.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class TaskDao implements BaseDao<Task>{
	
	@PersistenceContext
	EntityManager eManager;

	@Override
	public Task findById(int id) {
		return eManager.find(Task.class, id);
	}

	@Override
	public List<Task> listAll() {
		TypedQuery<Task> namedQuery = eManager.createNamedQuery("list_all", Task.class);
		return namedQuery.getResultList();
	}

	@Override
	public Task update(Task obj) {
		return eManager.merge(obj);
	}

	@Override
	public void delete(int id) {
		eManager.remove(findById(id));
	}

}
