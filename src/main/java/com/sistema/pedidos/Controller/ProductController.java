package com.sistema.pedidos.Controller;

import com.sistema.pedidos.Utileria.ConstantUtileria;
import com.sistema.pedidos.entity.Product;
import com.sistema.pedidos.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("/new")
    public ResponseEntity<Object> agregarProduct(@RequestBody Product product){
        return  productService.agregarProduct(product);
    }

    @GetMapping("/list/pageables")
    public ResponseEntity<Page<Product>> listarProductPorPagina(
            @RequestParam(defaultValue = ConstantUtileria.NUMERO_PAGINA_DEFECTO)int page,
            @RequestParam(defaultValue = ConstantUtileria.MEDIDA_PAGINA_DEFECTO)int size,
            @RequestParam(defaultValue = ConstantUtileria.ORDENAR_DEFECTO)String order,
            @RequestParam(defaultValue = ConstantUtileria.ORDENAR_DIRECCION_DEFECTO) boolean asc
    ){
        Page<Product> productPage=productService.listarProductPorPagina(
                PageRequest.of(page,size, Sort.by(order)));
        return new ResponseEntity<Page<Product>>(productPage, HttpStatus.OK);
    }

    @GetMapping("/list/search")
    public ResponseEntity<Page<Product>> listarProductPorNombrePagina(
            @RequestParam("product") String nombre,
            @RequestParam(defaultValue = ConstantUtileria.NUMERO_PAGINA_DEFECTO)int page,
            @RequestParam(defaultValue = ConstantUtileria.MEDIDA_PAGINA_DEFECTO) int size,
            @RequestParam(defaultValue = ConstantUtileria.ORDENAR_DIRECCION_DEFECTO) boolean asc
    ){
        Page<Product> productPage=productService.listarProductPorNombrePagina(nombre,
                PageRequest.of(page,size));

        return  new ResponseEntity<Page<Product>>(productPage,HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public void eliminarId(@PathVariable Long id){
        productService.eliminar(id);
    }

}