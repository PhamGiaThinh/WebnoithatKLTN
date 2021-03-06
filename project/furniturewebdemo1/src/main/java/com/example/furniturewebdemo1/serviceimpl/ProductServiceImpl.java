package com.example.furniturewebdemo1.serviceimpl;

import com.example.furniturewebdemo1.model.Product;
import com.example.furniturewebdemo1.repository.ProductRepository;
import com.example.furniturewebdemo1.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {

    ProductRepository productRepository;

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository){
        this.productRepository=productRepository;
    }
    @Override
    public List<Product> findAllProduct() {
        return productRepository.findAll();
    }

    @Override
    public Optional<Product> findProductById(long id) {
        return productRepository.findById(id);
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public void delete(Product product) {
        productRepository.delete(product);
    }

    @Override
    public String storeImg(MultipartFile file) throws IOException {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        File convertFile = new File("uploads/products/"+fileName);
        convertFile.createNewFile();

        try (FileOutputStream fout = new FileOutputStream(convertFile))
        {
            fout.write(file.getBytes());
        }
        catch (Exception exe)
        {
            exe.printStackTrace();
        }
        return file.getOriginalFilename();
    }

    @Override
    public String storeImgA(MultipartFile file, long id) throws IOException {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        File convertFile = new File("uploads/products/"+fileName);
        convertFile.createNewFile();

        try (FileOutputStream fout = new FileOutputStream(convertFile))
        {
            fout.write(file.getBytes());
        }
        catch (Exception exe)
        {
            exe.printStackTrace();
        }
        return file.getOriginalFilename();
    }

    @Override
    public Page<Product> findAllByPriceAsc(Pageable pageable, int pageNum) {
        pageable= PageRequest.of(pageNum,12, Sort.by("discountPrice").ascending());
        Page<Product> page = productRepository.findAll(pageable);
        return page;
    }

    @Override
    public Page<Product> findAllByPriceDesc(Pageable pageable, int pageNum) {
        pageable= PageRequest.of(pageNum,12, Sort.by("discountPrice").descending());
        Page<Product> page = productRepository.findAll(pageable);
        //page.c
        //page.map(a -> a)
        //page.map(this::findAllProduct)

        return page;
    }

    @Override
    public Page<Product> findAll(Pageable pageable, int pageNum) {
        pageable= PageRequest.of(pageNum,12);
        Page<Product> page = productRepository.findAll(pageable);
        return page;
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByNameLike("%"+name+"%");
    }

    @Override
    public List<Product> findByCategory(long id) {
        return productRepository.findByCategory(id);
    }

}
