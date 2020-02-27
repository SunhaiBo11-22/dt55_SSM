package cn.java.entity;

import java.util.List;

public class Producttype {
    private Integer id;

    private String typename;
    
    private List<Producttype> list;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename == null ? null : typename.trim();
    }

	public List<Producttype> getList() {
		return list;
	}

	public void setList(List<Producttype> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Producttype [id=" + id + ", typename=" + typename + "]";
	}
	
	
}