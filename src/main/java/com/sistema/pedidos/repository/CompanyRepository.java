package com.sistema.pedidos.repository;

import com.sistema.pedidos.entity.Company;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyRepository extends JpaRepository<Company, Long> {
}
