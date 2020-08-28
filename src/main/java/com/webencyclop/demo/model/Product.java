package com.webencyclop.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name= "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;

	@NotNull
	private String name;

	@NotNull
	private String description;
    
	@NotNull
	private String seller;

	@NotNull
	private double price;
	
	@NotNull
	private String image;

	

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	
	public Product(String id, @NotNull String name, @NotNull String description, @NotNull String seller,
			@NotNull double price, @NotNull String image) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.seller = seller;
		this.price = price;
		this.image = image;
	}

	public Product() {
	
	}

}
