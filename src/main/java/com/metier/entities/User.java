package com.metier.entities;

//Hetha Esmo JAVA BEAN//Hetha Esmo JAVA BEAN//Hetha Esmo JAVA BEAN//Hetha Esmo JAVA BEAN

import java.io.Serializable;
public class User implements Serializable {
    private Long id;
    private String nom;
    private String prenom;
    private int age;
    private String email;
    private int telephone;

    public User() {
        super();
    }

    public User(String nom, String prenom, int age, String email, int telephone) {
        this.nom = nom;
        this.prenom = prenom;
        this.age = age;
        this.email = email;
        this.telephone = telephone;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", age=" + age +
                ", email='" + email + '\'' +
                ", telephone=" + telephone +
                '}';
    }
}
