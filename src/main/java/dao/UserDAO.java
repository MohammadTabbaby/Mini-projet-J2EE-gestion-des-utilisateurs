package dao;

import com.metier.entities.User;

import java.util.List;

public interface UserDAO {
    public User addUser(User u);
    public List<User> SearchUsersParMc(String mc);
    public User getUser(Long id);
    public List<User> getAllUsers();
    public User updateUser(User u);
    public void deleteUser(Long id);

}
