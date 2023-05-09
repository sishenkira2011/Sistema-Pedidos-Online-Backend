package com.sistema.pedidos.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "sucursales")
@Data
public class Sucursal {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column
    private String nombre;
    @Column
    private String abreviatura;
    @Column
    private String direccion;
    @Column
    private boolean estado;
    @ManyToOne
    private Company empresa;
}