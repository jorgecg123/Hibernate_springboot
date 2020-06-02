package mx.com.trnetwork.controller;

import java.util.Optional;
import java.util.function.Consumer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.ProductoRepository;

@Controller
@RequestMapping(value = "/producto")
public class ProductosCtrl {

	@Autowired
	private ProductoRepository productoRepository;

	@GetMapping("/add")
	public String agregar(Model m) {
		return "nuevoproducto";
	}

	@PostMapping("/add")
	public ModelAndView agrega(@RequestParam(name = "nombre") String nombre,
			@RequestParam(name = "precio") String precio, @RequestParam(name = "descripcion") String descripcion,
			@RequestParam(name = "img") String img) {
		Producto newProducto = new Producto();
		newProducto.setName(nombre);
		newProducto.setPrice(Float.parseFloat(precio));
		newProducto.setDescription(descripcion);
		newProducto.setImg(img);

		productoRepository.save(newProducto);

		return new ModelAndView("redirect:/producto/listarproductos");
	}

	@RequestMapping("/listarproductos")
	public String listar(Model m) {
		Iterable<Producto> productos = productoRepository.findAll();
		productos.forEach(new Consumer<Producto>() {
			@Override
			public void accept(Producto p) {
				System.out.println(p);
			}
		});

		m.addAttribute("productos", productos);
		return "listarproductos";
	}

	@PostMapping("/delete")
	public ModelAndView eliminar(@RequestParam(name = "id") String id) {
		Iterable<Producto> productos = productoRepository.findAll();
		productos.forEach(new Consumer<Producto>() {
			@Override
			public void accept(Producto p) {

				if (p.getId() == Integer.parseInt(id)) {
					System.out.println(p);
					productoRepository.delete(p);

				}
			}
		});
		return new ModelAndView("redirect:/producto/listarproductos");
	}

	@GetMapping("/update")
	public String actualizar(@RequestParam(name = "id") Long id, Model m) {
		Iterable<Producto> productos = productoRepository.findById(id);
		m.addAttribute("producto", productos);
		System.out.println(productos);

		return "actualizaproductos";
	}

	@PostMapping("/update")
	public ModelAndView actualiza(@RequestParam(name = "id") String id, @RequestParam(name = "nombre") String nombre,
			@RequestParam(name = "precio") String precio, @RequestParam(name = "descripcion") String descripcion,
			@RequestParam(name = "img") String img) {
		Iterable<Producto> productos = productoRepository.findAll();
		productos.forEach(new Consumer<Producto>() {
			@Override
			public void accept(Producto p) {

				if (p.getId() == Integer.parseInt(id)) {
					// System.out.println(p);
					p.setId(Long.parseLong(id));
					p.setName(nombre);
					p.setPrice(Float.parseFloat(precio));
					p.setDescription(descripcion);
					p.setImg(img);
					productoRepository.save(p);
				}
			}
		});
		return new ModelAndView("redirect:/producto/listarproductos");
	}
}
