package mx.com.trnetwork.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mx.com.trnetwork.model.Categoria;
@Repository
public interface CategoriaRepository extends CrudRepository<Categoria, Long> {
	Categoria findByProductos(long productoId);
}
