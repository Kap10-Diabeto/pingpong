/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.pingpong.beans;

import com.mycompany.pingpong.ConnectionFactory;
import com.mycompany.pingpong.entities.Matches;
import com.mycompany.pingpong.entities.Person;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.ejb.Stateless;

/**
 *
 * @author Matteus Psajd
 */
@Stateless
public class ResultsBean {
    
public Matches getMatches(){
   Matches matches;
   matches = getFromDatabase();
   return matches;

}
    

    
private Matches getFromDatabase(){
    try (Connection connection = ConnectionFactory.GetConnection()){
        Matches matches = new Matches();
        Statement stmt = connection.createStatement();
        String sql ="SELECT * from pingpong";
        ResultSet data = stmt.executeQuery(sql);
        data.next();
        
        return matches;
    } catch (Exception e) {
            System.out.println("Error MealsBean.getFormDatabase"+e.getMessage());
        }
    return null;
}
}
