package web;

import com.metier.entities.User;

import java.util.ArrayList;
import java.util.List;

//Pour Passe Le Modele a la jsp
public class UserModel {
    private String motCle;
    List<User> users = new ArrayList<>();

    public String getMotCle() {
        return motCle;
    }

    public void setMotCle(String motCle) {
        this.motCle = motCle;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

}
