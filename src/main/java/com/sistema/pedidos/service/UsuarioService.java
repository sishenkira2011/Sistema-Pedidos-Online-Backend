package com.sistema.pedidos.service;

import java.util.Optional;
import java.util.Set;

import com.sistema.pedidos.DTO.UsuarioDTO;
import com.sistema.pedidos.entity.Usuario;
import com.sistema.pedidos.entity.UsuarioRol;
import org.springframework.http.ResponseEntity;

public interface UsuarioService {
	
	public ResponseEntity<Usuario> guardarUsuario(Usuario usuario, Set<UsuarioRol> usuarioRoles, Integer idEmployee) throws Exception;
	public ResponseEntity<Usuario> guardarUsuario(Usuario usuario, Set<UsuarioRol> usuarioRoles) throws Exception;

	public Usuario obtenerUsuario(String username);
	ResponseEntity<Usuario> guardarUsuario(Usuario usuario) throws Exception;
	
	public void eliminarUsuario(Long usuarioId);


	public ResponseEntity<UsuarioDTO> modificarUsuario(UsuarioDTO usuario);
	public Optional<Usuario> guardarUsuarioSinValidar(Usuario usuario, Set<UsuarioRol> usuarioRoles);
}
