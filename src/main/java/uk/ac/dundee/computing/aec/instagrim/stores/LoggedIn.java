/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.stores;

/**
 *
 * @author Administrator
 */
public class LoggedIn {
    boolean logedin=false;
    String Username=null;
    String firstname=null;
    String lastname=null;
    String email=null;
    String address=null;
    public void LogedIn(){
        
    }
    
    public void setUsername(String name){
        this.Username=name;
    }
    public String getUsername(){
        return Username;
    }
  
    public void setFirstname(String firstname){
        this.firstname=firstname;
    }
    public String getFirstname(){
        return firstname;
    }
  
    public void setLastname(String lastname){
        this.lastname=lastname;
    }
    public String getLastname(){
        return lastname;
    }
    
    public void setEmail(String email){
        this.email=email;
    }
    public String getEmail(){
        return email;
    }
    
    public void setAdress(String address){
        this.address=address;
    }
    public String getAddress(){
        return address;
    }
    
    public void setLogedin(){
        logedin=true;
    }
    public void setLogedout(){
        logedin=false;
    }
    
    public void setLoginState(boolean logedin){
        this.logedin=logedin;
    }
    public boolean getlogedin(){
        return logedin;
    }
}
