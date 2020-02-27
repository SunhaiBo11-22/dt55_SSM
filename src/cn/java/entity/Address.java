package cn.java.entity;

public class Address {
    private Integer id;

    private String province;

    private String city;

    private String dist;

    private String street;

    private String name;

    private Integer phone;

    private Integer userid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getDist() {
        return dist;
    }

    public void setDist(String dist) {
        this.dist = dist == null ? null : dist.trim();
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street == null ? null : street.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

	@Override
	public String toString() {
		return "Address [id=" + id + ", province=" + province + ", city=" + city + ", dist=" + dist + ", street="
				+ street + ", name=" + name + ", phone=" + phone + ", userid=" + userid + "]";
	}
    
    
}