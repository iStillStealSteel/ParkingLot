/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.park.parkinglot.common;

import javax.ejb.Stateless;

/**
 *
 * @author boo_b
 */
@Stateless
public class UserDetails implements java.io.Serializable {

    private Integer id;
    
    private String username;
    
    private String email;
    
    private String position;

    public UserDetails() {
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPosition() {
        return position;
    }
    
    public UserDetails(Integer id,String username, String email,String position){
        this.id=id;
        this.username=username;
        this.email=email;
        this.position=position;
    }
    
    public Integer getId(){
        return id;
    }
    
  
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
