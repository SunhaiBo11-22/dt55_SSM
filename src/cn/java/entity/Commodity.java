package cn.java.entity;

public class Commodity {
    private Integer id;

    private String comname; 

    private Integer stock;

    private Integer salesvolume;

    private Double price;

    private Double original;

    private Integer producttype;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname == null ? null : comname.trim();
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getSalesvolume() {
        return salesvolume;
    }

    public void setSalesvolume(Integer salesvolume) {
        this.salesvolume = salesvolume;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getOriginal() {
        return original;
    }

    public void setOriginal(Double original) {
        this.original = original;
    }

    public Integer getProducttype() {
        return producttype;
    }

    public void setProducttype(Integer producttype) {
        this.producttype = producttype;
    }

	@Override
	public String toString() {
		return "Commodity [id=" + id + ", comname=" + comname + ", stock=" + stock + ", salesvolume=" + salesvolume
				+ ", price=" + price + ", original=" + original + ", producttype=" + producttype + "]";
	}
    
}