package com.sistema.pedidos.repository;

import com.sistema.pedidos.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.Optional;

public interface UsuarioRepositorio extends JpaRepository<Usuario, Integer>{

	public Optional<Usuario> findByEmail(String email);
	
	public Optional<Usuario> findByUsernameOrEmail(String username,String email);
	
	public Optional<Usuario> findByUsername(String username);
	
	public Boolean existsByUsername(String username);
	
	public Boolean existsByEmail(String email);

	@Transactional
	@Modifying
	@Query(value = "update Usuario u set u.enabled = false where u.id = ?1")
	public int  deshabilitarUsuario(Long id);

	
}
