package com.sistema.pedidos.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "Categoria")
@Data
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "")
    private long id;
    @Column
    private String CT_Nombre;
    @Column
    private boolean CT_Estado;
}
