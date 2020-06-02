package mx.com.trnetwork.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mx.com.trnetwork.model.Categoria;
import mx.com.trnetwork.model.Producto;
import mx.com.trnetwork.repository.CategoriaRepository;
import mx.com.trnetwork.repository.ProductoRepository;

@Service
public class CategoriaServiceImpl implements CategoriaService {

	@Autowired
	private ProductoRepository productoRepository;
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	
	@Override
	public List<String> getAllCategoriaProducto(long catId) {
		List<String> resultado = new ArrayList<String>();
		List<Producto> productos = productoRepository.findByCategoriaId(catId);
		for (Producto producto : productos) {
			resultado.add(producto.getName());
		}
		return resultado;
	}
	
	@Override
	public void addProductosToCatedoria(Producto p, Long catId) {
		Optional<Categoria> produc = categoriaRepository.findById(catId);
		p.setCat(produc.get());
		productoRepository.save(p);
	}
	@Override
	public List<Categoria> getCategorias() {
		List<Categoria> cat = (List<Categoria>) categoriaRepository.findAll();
		return cat;
	}
	
	
}
