package mx.com.trnetwork;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tienda")
public class Controller2 {

	@Autowired
	Carrito carrito;

	// listar
	@RequestMapping("/productos")
	public String viewProductos(Model miModelo) {
		miModelo.addAttribute("carrito", carrito);
		return "shopping";
	}

	// llama la funcion agregar
	@RequestMapping(value = "/add-to-carr", method = RequestMethod.POST)
	public String addToCar(@RequestParam(name = "productos", required = true) String producto, Model miModelo) {
		//System.out.println(producto);
		carrito.add(producto);
		miModelo.addAttribute("carrito", carrito);
		return "shopping";
	}

	// eliminar
	@RequestMapping(value = "/remove-to-carr", method = RequestMethod.POST)
	public String removeToCar(@RequestParam(name = "productos", required = true) String producto, Model miModelo) {

		carrito.remove(producto);
		miModelo.addAttribute("carrito", carrito);
		// producto

		return "shopping";
	}
}
