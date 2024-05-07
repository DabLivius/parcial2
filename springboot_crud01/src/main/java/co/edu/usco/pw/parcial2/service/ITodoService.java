package co.edu.usco.pw.parcial2.service;

import java.util.Date;

import java.util.List;
import java.util.Optional;

import co.edu.usco.pw.parcial2.model.Todo;

public interface ITodoService {

	List<Todo> getTodosByUser(String user);

	Optional<Todo> getTodoById(long id);

	void updateTodo(Todo todo);

	void addTodo(String name, String description, Date targetDate, String teacher, int classroom, String nameClass, boolean isDone);

	void deleteTodo(long id);
	
	void saveTodo(Todo todo);

}