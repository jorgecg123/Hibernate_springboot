package mx.com.trnetwork.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;
import mx.com.trnetwork.service.CategoriaService;

@RestController
@RequestMapping("/categories")
public class ProductoCtrl {

	@Autowired
	ProductoRepository productoRepository;
	@Autowired
	CategoriaService cat;
	
	@GetMapping
	List<Producto> allProductos(){
		return (List<Producto>) productoRepository.findAll(); 
	}
	
	@PostMapping
	Producto crear(@RequestBody Producto p) {
		cat.addProductosToCatedoria(p, p.getCat().getId());
		return productoRepository.save(p);
	}
	
	@PutMapping
	Producto actualizar(@RequestBody Producto p) {
		return productoRepository.save(p);
	}
}
