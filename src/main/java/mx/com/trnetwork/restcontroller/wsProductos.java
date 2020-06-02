package mx.com.trnetwork.restcontroller;

import java.util.function.Consumer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;

@RestController
public class wsProductos {

	@Autowired
	private ProductoRepository productoRepository;

	@GetMapping("/productos")
	Iterable<Producto> listar() {
		return productoRepository.findAll();
	}

	@GetMapping("/productos/{id}")
	Iterable<Producto> recuperar(@PathVariable Long id) {
		return productoRepository.findById(id);
	}

	@DeleteMapping("/elimina/{id}")
	boolean eliminar(@PathVariable Long id) {
		Iterable<Producto> productos = productoRepository.findAll();
		productos.forEach(new Consumer<Producto>() {
			@Override
			public void accept(Producto p) {
				if (p.getId() == id) {
					System.out.println(p);
					productoRepository.delete(p);

				}
			}
		});
		return true;

	}

	@PostMapping("/agregar")
	public String agregar(@RequestBody Producto p) {
		try {
			productoRepository.save(p);
			return "Prducto agregado";
		} catch (Exception e) {
			return "Parece que algo salio mal, error: " + e;
		}
	}

	@PutMapping("/actualizar")
	public String actualizar(@RequestBody Producto p) {
		try {
			productoRepository.save(p);
			return "Producto actualizado";
		} catch (Exception e) {
			return "Parece que algo salio mal, error: " + e;
		}

	}
}
