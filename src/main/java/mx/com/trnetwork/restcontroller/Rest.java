package mx.com.trnetwork.restcontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;

@RestController
public class Rest {

	/*
	 * @RequestMapping("/saluda") public String saluda() { return "Hola"; }
	 */
	
	@Autowired
	ProductoRepository productosRepository;
	
	@RequestMapping("/ajax/buscarproductos")
	public ResponseEntity<?> buscarproductos(@RequestParam(name = "nombre") String nombre){
		List<Producto> productos = productosRepository.findBynameContainsIgnoreCase(nombre);
		return new ResponseEntity<List<Producto>>(productos, HttpStatus.OK);
	}
	
	@GetMapping("/mostrarprincipal")
	public Iterable<Producto> mostrar(){
		return productosRepository.findAll();
	}
	
}

