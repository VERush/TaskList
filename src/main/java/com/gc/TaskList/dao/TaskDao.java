package com.gc.TaskList.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.gc.TaskList.entity.Task;

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
	
	public List<Task> listByUserId(int userid){
		TypedQuery<Task> namedQuery = eManager.createNamedQuery("list_by_user_id", Task.class)
				.setParameter("userid", userid);
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
	
	public void deleteById(int id) {
		Task t = findById(id);
		eManager.remove(t);
	}

}
