package com.slab.dao;

import org.springframework.data.repository.CrudRepository;

import com.slab.model.Task;

public interface TaskRepository extends CrudRepository<Task, Integer>{

}
