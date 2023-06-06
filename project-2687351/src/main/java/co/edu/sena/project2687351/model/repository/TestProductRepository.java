package co.edu.sena.project2687351.model.repository;

import co.edu.sena.project2687351.model.beans.Product;

import java.sql.SQLException;

public class TestProductRepository {
    public static void main(String[] args) throws SQLException {
        Repository<Product> repository = new ProductRepositoryImpl();

        System.out.println("====== saveObj Insert ======");
        Product productInsert = new Product();
        productInsert.setProduct_name("Leche");
        productInsert.setProduct_value(2000);
        productInsert.setCategory_id(1);
        repository.saveObj(productInsert);
        productInsert.setProduct_name("Cerveza Andina");
        productInsert.setProduct_value(3500);
        productInsert.setCategory_id(2);
        repository.saveObj(productInsert);

        System.out.println("====== listAllObj ======");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("====== byIdObj ======");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("====== saveObj ======");
        Product productUpdate = new Product();
        productUpdate.setProduct_id(2);
        productUpdate.setProduct_name("Salchicha");
        productUpdate.setProduct_value(2500);
        productUpdate.setCategory_id(2);
        repository.saveObj(productUpdate);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("===== deleteObj ======");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    }
}
