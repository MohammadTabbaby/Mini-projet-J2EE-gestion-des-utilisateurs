package testing;

import com.metier.entities.User;
import dao.UserDaoImpl;

import java.util.List;

public class testDao {
    public static void main (String [] args) {
        UserDaoImpl udao = new UserDaoImpl();
        User user = udao.addUser(new User("user1", "user11", 20, "email", 12345678));
        System.out.println(user);
        List<User> users = udao.SearchUsersParMc("xxxxxxxxx");
        List<User> allusers = udao.getAllUsers();

        for (User u : users) {
            System.out.println("Searched Users :" + u);
        }

        for (User u : allusers) {
            System.out.println("all users :" + u);
        }
    }
}
