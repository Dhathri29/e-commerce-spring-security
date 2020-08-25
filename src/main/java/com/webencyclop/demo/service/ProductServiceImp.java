package com.webencyclop.demo.service;

import java.util.List;
import java.util.function.Predicate;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.webencyclop.demo.controller.ProductService;
import com.webencyclop.demo.model.Product;
import com.webencyclop.demo.repository.ProductRepository;

@Service
@Transactional
public class ProductServiceImp implements ProductService{
	
	private final ProductRepository productRepository;
	public ProductServiceImp(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}
	
	public List<Product> showAllProducts(){ 
		 
		List<Product> re=productRepository.findAll();
		  return re;		 
	 }
	
	public Product getProductById(String id) {

		Predicate<Product> byId = p -> p.getId().equals(id);
		return filterProducts(byId);
	}

	
	public Product filterProducts(Predicate<Product> strategy) {
		return showAllProducts().stream().filter(strategy).findFirst().orElse(null);
	}


}
