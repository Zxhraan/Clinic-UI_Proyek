package MODEL;

public class LoginBean {
    private String username;
    private String password;
    
    private String getUsername(){
        return username;
    }
    
    public void setUsername(){
        this.username = username;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
}