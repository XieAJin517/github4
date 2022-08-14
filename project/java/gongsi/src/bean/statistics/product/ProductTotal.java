package bean.statistics.product;

public class ProductTotal {
	private String name;  //根据商品的类别或供货商名称
	private Double Total;  //商品种类数量

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getTotal() {
		return Total;
	}
	public void setTotal(Double total) {
		Total = total;
	}


}
