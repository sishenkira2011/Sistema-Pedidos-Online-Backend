package com.sistema.pedidos.service;

import com.sistema.pedidos.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;

public interface ProductService {


    public ResponseEntity<Object> guardarProduct(Product product);

    public ResponseEntity<Product> actualizarProduct(Product product,Long id);

    public Product listarProductPorId(Long id);
    public Page<Product> listarProductPorPagina(Pageable pageable);

    public Page<Product> listarProductPorNombrePagina(String nombre,Pageable pageable);

    public void eliminar(Long id);
}
