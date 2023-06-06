package co.edu.sena.project2687351.model.repository;

import co.edu.sena.project2687351.model.beans.User;

import java.sql.SQLException;

public class TestUserRepository {

    public static void main(String[] args) throws SQLException {
        Repository<User> repository = new UserRepositoryImpl();

        System.out.println("====== saveObj Insert ======");
        User userInsert = new User();
        userInsert.setUser_firstname("alejandra");
        userInsert.setUser_lastname("tobón");
        userInsert.setUser_email("dalejav2295@gmail.com");
        userInsert.setUser_password("dalejandra2295");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("StIVEN");
        userInsert.setUser_lastname("HerRera");
        userInsert.setUser_email("stiven32@gmail.com");
        userInsert.setUser_password("kjaskla21");
        repository.saveObj(userInsert);

        System.out.println("====== listAllObj ======");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("====== byIdObj ======");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("====== saveObj ======");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("deivi");
        userUpdate.setUser_lastname("díaz");
        userUpdate.setUser_email("deivid@gmail.com");
        userUpdate.setUser_password("kjaskww24");
        repository.saveObj(userUpdate);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("====== deleteObj ======");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    }
}
