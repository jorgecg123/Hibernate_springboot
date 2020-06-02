package mx.com.trnetwork;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Carrito {
	HashMap<String, Integer> productos;
	// protected Integer cantidad;
	@Autowired
	protected HttpSession httpSession;

	public void add(String producto) {
		Integer cantidad;
		productos = getProductos();

		if (!productos.containsKey(producto)) {
			cantidad = 0;
		} else {
			cantidad = productos.get(producto);
		}

		productos.put(producto, cantidad + 1);
	}

	public void remove(String producto) {
		Integer cantidad;
		productos = getProductos();
		cantidad = productos.get(producto);

		if (cantidad == 1) {
			productos.remove(producto);

		} else {
			productos.put(producto, cantidad - 1);
		}

	}

	public HashMap<String, Integer> getProductos() {
		productos = (HashMap<String, Integer>) httpSession.getAttribute("productos");
		// System.out.println(productos);
		if (productos == null) {
			productos = new HashMap<String, Integer>();
			httpSession.setAttribute("productos", productos);

		}

		return productos;
	}
}
