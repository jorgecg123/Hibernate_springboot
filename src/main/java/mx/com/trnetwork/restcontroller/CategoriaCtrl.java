package mx.com.trnetwork.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Categoria;
import mx.com.trnetwork.repository.CategoriaRepository;

@RestController
@RequestMapping("/categoria")
public class CategoriaCtrl {
	
	@Autowired
	CategoriaRepository catRepository;
	
	@GetMapping
	List<Categoria> allCat(){
		return(List<Categoria>) catRepository.findAll();
	}
	
	@PostMapping
	Categoria crear(@RequestBody Categoria c) {
		return catRepository.save(c);
	}
}
