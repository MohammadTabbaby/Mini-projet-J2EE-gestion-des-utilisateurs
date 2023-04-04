package dao;

import com.metier.SingletonConnection;
import com.metier.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDAO{
    @Override
    public List<User> getAllUsers(){
        List<User> users = new ArrayList<User>();
        Connection conn = SingletonConnection.getConnection();
        try{
            PreparedStatement ps = conn.prepareStatement("select * from users");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                User u = new User();
                u.setId(rs.getLong("id"));
                u.setNom(rs.getString("nom"));
                u.setAge(rs.getInt("age"));
                u.setEmail(rs.getString("email"));
                u.setTelephone(rs.getInt("telephone"));
                users.add(u);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;
    }
    @Override
    public List<User> SearchUsersParMc(String mc){
        List<User> users = new ArrayList<User>();
        Connection conn = SingletonConnection.getConnection();
        try{
            PreparedStatement ps = conn.prepareStatement("select * from users where nom LIKE ?");
            ps.setString(1,"%" + mc + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                User u = new User();
                u.setId(rs.getLong("id"));
                u.setNom(rs.getString("nom"));
                u.setPrenom(rs.getString("prenom"));
                u.setAge(rs.getInt("age"));
                u.setEmail(rs.getString("email"));
                u.setTelephone(rs.getInt("telephone"));
                users.add(u);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;
    }
    @Override
    public User addUser(User u){
    Connection conn = SingletonConnection.getConnection();
    try{
        PreparedStatement ps = conn.prepareStatement("INSERT INTO users (nom, prenom, age, email, telephone) VALUES (?, ?, ?, ?, ?)");
        ps.setString(1,u.getNom());
        ps.setString(2,u.getPrenom());
        ps.setInt(3,u.getAge());
        ps.setString(4,u.getEmail());
        ps.setInt(5,u.getTelephone());
        ps.executeUpdate();
        PreparedStatement ps2 = conn.prepareStatement("SELECT max(id) as MAX_ID FROM users");
        ResultSet rsId = ps2.executeQuery();
        if (rsId.next()){
            u.setId(rsId.getLong("MAX_ID"));
        }
        ps.close();
        ps2.close();

    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    return u;
    }
    @Override
    public User getUser(Long id){
        Connection conn=SingletonConnection.getConnection();
        User u = new User();
        try {
            PreparedStatement ps= conn.prepareStatement("select * from users where id = ?");
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            if  (rs.next()) {
                u.setId(rs.getLong("id"));
                u.setNom(rs.getString("nom"));
                u.setPrenom(rs.getString("prenom"));
                u.setAge(rs.getInt("age"));
                u.setEmail(rs.getString("email"));
                u.setTelephone(rs.getInt("telephone"));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return u;
    }
    @Override
    public User updateUser(User u){
        Connection conn=SingletonConnection.getConnection();
        try {
            PreparedStatement ps= conn.prepareStatement("UPDATE users SET nom=?,prenom=?,age=?,email=?,telephone=? WHERE id=?");
            ps.setString(1, u.getNom());
            ps.setString(2, u.getPrenom());
            ps.setLong(3, u.getAge());
            ps.setString(4, u.getEmail());
            ps.setLong(5, u.getTelephone());
            ps.setLong(6, u.getId());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return u;
    }
    @Override
    public void deleteUser(Long id){
        Connection conn = SingletonConnection.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(" DELETE FROM users where id= ? ");
            ps.setLong(1, id);
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

