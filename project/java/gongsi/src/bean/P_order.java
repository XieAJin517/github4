package bean;

public class P_order {
private int orderID;
private int empID;
private String empName;
private String comName;
private int custID;
private java.sql.Date orderDate; //这个变量用来写数据库
private String nowDate; //这个变量用来在网页上显示


public String getNowDate() {
	return nowDate;
}
public void setNowDate(String nowDate) {
	this.nowDate = nowDate;
}
private float total;

public String getEmpName() {
	return empName;
}
public void setEmpName(String empName) {
	this.empName = empName;
}
public String getComName() {
	return comName;
}
public void setComName(String comName) {
	this.comName = comName;
}

public int getOrderID() {
	return orderID;
}
public void setOrderID(int orderID) {
	this.orderID = orderID;
}

public float getTotal() {
	return total;
}
public void setTotal(float total) {
	this.total = total;
}
public int getEmpID() {
	return empID;
}
public void setEmpID(int empID) {
	this.empID = empID;
}
public int getCustID() {
	return custID;
}
public void setCustID(int custID) {
	this.custID = custID;
}
public java.sql.Date getOrderDate() {
	return orderDate;
}
public void setOrderDate(java.sql.Date orderDate) {
	this.orderDate = orderDate;
}

}
