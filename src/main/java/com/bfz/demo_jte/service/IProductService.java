package com.bfz.demo_jte.service;

import com.bfz.demo_jte.entity.Product;

import java.util.List;
import java.util.Optional;

public interface IProductService {

    List<Product> findAll();
    Optional<Product> findById(Long id);
    void save(Product product);
    void deleteById(Long id);

}
