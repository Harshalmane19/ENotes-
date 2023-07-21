package com.User;

import java.sql.Date;
import java.sql.Timestamp;


public class Post {
    private int id;
    private String title;
    private String content;
    private Timestamp Pdate;
    private UserDetails user;

   
    public Post(int id,String title,String content,Timestamp Pdate,UserDetails user){
        super();
        this.id=id;
        this.title=title;
        this.content=content;
        this.Pdate=Pdate;
        this.user=user;
    }
    public Post(){
        super();
    }
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

  
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the date
     */
    public Timestamp getPDate() {
        return Pdate;
    }

   
    public void setPDate(Timestamp Pdate) {
        this.Pdate = Pdate;
    }

    /**
     * @return the user
     */
    public UserDetails getUser() {
        return user;
    }

   
    public void setUser(UserDetails user) {
        this.user = user;
    }

   
    
    
    
}
