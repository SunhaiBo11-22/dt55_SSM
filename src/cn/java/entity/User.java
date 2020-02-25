package cn.java.entity;

public class User {
    private Integer id;

    private String phonenumber;

    private String password;

    private String username;

    private Integer defaultaddress;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber == null ? null : phonenumber.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Integer getDefaultaddress() {
        return defaultaddress;
    }

    public void setDefaultaddress(Integer defaultaddress) {
        this.defaultaddress = defaultaddress;
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", phonenumber=" + phonenumber + ", password=" + password
				+ ", username=" + username + ", defaultaddress=" + defaultaddress + "]";
	}
    
}