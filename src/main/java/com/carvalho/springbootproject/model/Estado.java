package com.carvalho.springbootproject.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table
@Getter
@Setter
public class Estado {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String nome;
}
