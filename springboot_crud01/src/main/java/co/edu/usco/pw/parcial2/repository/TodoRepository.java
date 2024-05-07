package co.edu.usco.pw.parcial2.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.edu.usco.pw.parcial2.model.Todo;

public interface TodoRepository extends JpaRepository<Todo, Long>{
	List<Todo> findAll();
}
