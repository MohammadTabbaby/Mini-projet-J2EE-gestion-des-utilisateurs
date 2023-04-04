package web;

import com.metier.entities.User;
import dao.UserDAO;
import dao.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;
import java.io.IOException;
import java.util.List;

@WebServlet (name="cs", urlPatterns = {"/controleur", "*.do"})

public class UserServlet extends HttpServlet {
    UserDAO metier;

    @Override
    public void init() throws ServletException {
        metier = new UserDaoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if (path.equals("/index.do")) {
            String motCle = "";
            UserModel model = new UserModel();
            model.setMotCle(motCle);
            List<User> users = metier.SearchUsersParMc(motCle);
            model.setUsers(users);
            request.setAttribute("model", model);
            request.getRequestDispatcher("user-list.jsp").forward(request, response);
        }
        else if (path.equals("/chercher.do")) {

            String motCle = request.getParameter("motCle");
            UserModel model = new UserModel();
            model.setMotCle(motCle);
            List<User> users = metier.SearchUsersParMc(motCle);
            model.setUsers(users);
            request.setAttribute("model", model);
            request.getRequestDispatcher("user-list.jsp").forward(request, response);

        }
        else if (path.equals("/saisie.do")) {
            request.getRequestDispatcher("addUser.jsp").forward(request, response);
        }
        else if(path.equals("/save.do") && request.getMethod().equals("POST")){

            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            int age = Integer.parseInt(request.getParameter("age"));
            String email = request.getParameter("email");
            int telephone = Integer.parseInt(request.getParameter("telephone"));
            User u = metier.addUser(new User(nom, prenom, age, email, telephone));
            request.setAttribute("user", u);
            request.getRequestDispatcher("confirmation.jsp").forward(request, response);

        }
        else if(path.equals("/supprimer.do")){

            Long id = Long.parseLong(request.getParameter("id"));
            metier.deleteUser(id);
            response.sendRedirect("chercher.do?motCle=");

        }
        else if(path.equals("/editer.do")){

            Long id = Long.parseLong(request.getParameter("id"));
            User u = metier.getUser(id);
            request.setAttribute("user", u);
            request.getRequestDispatcher("editerUser.jsp").forward(request, response);

        }
        else if (path.equals("/update.do")){
            Long id = Long.parseLong(request.getParameter("id"));
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            int age = Integer.parseInt(request.getParameter("age"));
            String email = request.getParameter("email");
            int telephone = Integer.parseInt(request.getParameter("telephone"));
            User u = new User();
            u.setId(id);
            u.setNom(nom);
            u.setPrenom(prenom);
            u.setAge(age);
            u.setEmail(email);
            u.setTelephone(telephone);
            metier.updateUser(u);
            request.setAttribute("user", u);
            request.getRequestDispatcher("confirmation2.jsp").forward(request,response);

        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doGet(request, response);
    }
}

