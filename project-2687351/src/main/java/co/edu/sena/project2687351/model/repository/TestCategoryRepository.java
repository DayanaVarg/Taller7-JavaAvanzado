package co.edu.sena.project2687351.model.repository;

import co.edu.sena.project2687351.model.beans.Category;

import java.sql.SQLException;

public class TestCategoryRepository {
    public static void main(String[] args) throws SQLException {
        Repository<Category> repository = new CategoryRepositoryImpl();

        System.out.println("====== saveObj Insert ======");
        Category categoryInsert = new Category();
        categoryInsert.setCategory_name("Lácteos");
        repository.saveObj(categoryInsert);
        categoryInsert.setCategory_name("Licores");
        repository.saveObj(categoryInsert);


        System.out.println("====== listAllObj ======");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("====== byIdObj ======");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("====== saveObj ======");
        Category categoryUpdate = new Category();
        categoryUpdate.setCategory_id(2);
        categoryUpdate.setCategory_name("Embutidos");
        repository.saveObj(categoryUpdate);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("====== deleteObj ======");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    }
}
