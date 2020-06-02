package mx.com.trnetwork.service;

import java.util.List;

import mx.com.trnetwork.model.Categoria;
import mx.com.trnetwork.model.Producto;

public interface CategoriaService {
	public List<String> getAllCategoriaProducto(long catId);
	
	public void addProductosToCatedoria(Producto p, Long catId);
	
	public List<Categoria> getCategorias();
}
