package com.sistema.pedidos.repository;

import com.sistema.pedidos.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface ProductRepository extends JpaRepository <Product, Long>{
    Optional<Product> findById(Long id);

    @Query(value = "SELECT * FROM producto p WHERE p.nombre LIKE UPPER(CONCAT(?1, '%')) ",nativeQuery = true)
    Page<Product> listarProductPorNombrePagina(String nombre, Pageable pageable);
}
