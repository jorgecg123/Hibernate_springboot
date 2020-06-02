package mx.com.trnetwork.repository;

import java.util.List;
import org.springframework.stereotype.Repository;

import mx.com.trnetwork.model.Producto;

import org.springframework.data.repository.CrudRepository;

@Repository
public interface ProductoRepository extends CrudRepository<Producto, Integer> {
	
	List<Producto> findByCategoriaId(long catId);
	List<Producto> findBynameContainsIgnoreCase(String id);
	Iterable<Producto> findById(Long id);
	

}
