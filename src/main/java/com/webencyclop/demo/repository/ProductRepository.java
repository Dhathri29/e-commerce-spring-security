package com.webencyclop.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webencyclop.demo.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
