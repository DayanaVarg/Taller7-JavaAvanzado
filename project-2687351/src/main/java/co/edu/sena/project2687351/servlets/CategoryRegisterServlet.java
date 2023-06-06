package co.edu.sena.project2687351.servlets;

import co.edu.sena.project2687351.model.beans.Category;
import co.edu.sena.project2687351.model.repository.CategoryRepositoryImpl;
import co.edu.sena.project2687351.model.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/categories_register")
public class CategoryRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //collect all form data
        String category_name = request.getParameter("category_name");

        //fill it up in a user bean
        Category category = new Category();
        category.setCategory_name(category_name);

        //call repository tayer and save the user object to do
        Repository<Category> repository = new CategoryRepositoryImpl();
        int rows = 0;
        try{
            repository.saveObj(category);
        }catch (SQLException e){
            e.printStackTrace();
        }

        //prepare an information message for user about success or failure of the operation
        if(rows==0){
            System.out.println("Ocurrió un erro");
        }else {
            System.out.println("Registro exitoso");
        }
    }
}
