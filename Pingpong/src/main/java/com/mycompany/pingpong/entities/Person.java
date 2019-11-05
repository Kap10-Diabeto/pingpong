/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pingpong.entities;

import java.util.ArrayList;

/**
 *
 * @author Matteus Psajd
 */
public class Person {
    private int id;
    private String namn;
    private int wins;
    private int losses;

    public Person() {
    }
    
    ArrayList<Matches> person;
    
    public ArrayList<Matches> getMatches() {
        return person;
    }

    public Person(ArrayList<Matches> person) {
        this.person = person;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNamn() {
        return namn;
    }

    public void setNamn(String namn) {
        this.namn = namn;
    }

    public int getWins() {
        return wins;
    }

    public void setWins(int wins) {
        this.wins = wins;
    }

    public int getLosses() {
        return losses;
    }

    public void setLosses(int losses) {
        this.losses = losses;
    }
    
    
}
