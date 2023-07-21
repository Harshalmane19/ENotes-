package com.DAO;

import com.User.UserDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
private Connection conn;

    /**
     * @return the conn
     */
    public UserDAO(Connection conn){
        super();
        this.conn=conn;
    }
    
    public boolean addUser(UserDetails us){
        boolean f=false;
        try{
            String query="insert into login(name,email,password)values(?,?,?)";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1,us.getName());
            ps.setString(2,us.getEmail());
            ps.setString(3,us.getPassword());
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    
    public UserDetails loginUser(UserDetails us){
        
        UserDetails user=null;
        
        try{
            String query="SELECT * FROM login WHERE email=? AND password=?";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1,us.getEmail());
            ps.setString(2,us.getPassword());
            
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                user=new UserDetails();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
        
    }


}
