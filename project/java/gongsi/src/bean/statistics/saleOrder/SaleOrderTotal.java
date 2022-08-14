package bean.statistics.saleOrder;

public class SaleOrderTotal {
private String name; //根据商品的种类名称、客户名称、供应商名称
private double saleNumTotal;  //销售的商品数量
private double saleMoneyTotal;  //销售的商品金额
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public double getSaleNumTotal() {
	return saleNumTotal;
}
public void setSaleNumTotal(double saleNumTotal) {
	this.saleNumTotal = saleNumTotal;
}
public double getSaleMoneyTotal() {
	return saleMoneyTotal;
}
public void setSaleMoneyTotal(double saleMoneyTotal) {
	this.saleMoneyTotal = saleMoneyTotal;
}


}

