package com.gc.TaskList.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(name = "find_all_tasks", query = "select t from Task t")
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	int userid;
	String task;
	Date duedate;
	boolean complete;

	public Task() {

	}

	public Task(int id, int userid, String task, Date duedate, boolean complete) {
		this.id = id;
		this.userid = userid;
		this.task = task;
		this.duedate = duedate;
		this.complete = complete;
	}

	public Task(int userid, String task, Date duedate, boolean complete) {
		this.userid = userid;
		this.task = task;
		this.duedate = duedate;
		this.complete = complete;
	}

	public int getId() {
		return id;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public Date getDuedate() {
		return duedate;
	}

	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

	@Override
	public String toString() {
		return "Task: " + id + ", userid: " + userid + ", task: " + task + ", duedate: " 
				+ duedate + ", complete: " + complete;
	}

}
