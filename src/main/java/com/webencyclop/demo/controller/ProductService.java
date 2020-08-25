package com.webencyclop.demo.controller;

import java.util.List;
import java.util.function.Predicate;

import com.webencyclop.demo.model.Product;

public interface ProductService {
	public List<Product> showAllProducts();
	public Product getProductById(String productId);
	public Product filterProducts(Predicate<Product> strategy);
}
