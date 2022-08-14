package bean;

public class Product {
private int proID;
private String proName;
private int kindID;
private String kindName;
private float price;
private float wareNum;
private float inPrice;
private float holidayPrice;
private float salePrice;
private String proImage;

public String getProImage() {
	return proImage;
}
public void setProImage(String proImage) {
	this.proImage = proImage;
}
public int getKindID() {
	return kindID;
}
public void setKindID(int kindID) {
	this.kindID = kindID;
}
public int getProID() {
	return proID;
}
public void setProID(int proID) {
	this.proID = proID;
}
public String getProName() {
	return proName;
}
public void setProName(String proName) {
	this.proName = proName;
}

public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}

public String getKindName() {
	return kindName;
}
public void setKindName(String kindName) {
	this.kindName = kindName;
}
public float getWareNum() {
	return wareNum;
}
public void setWareNum(float wareNum) {
	this.wareNum = wareNum;
}
public float getInPrice() {
	return inPrice;
}
public void setInPrice(float inPrice) {
	this.inPrice = inPrice;
}
public float getHolidayPrice() {
	return holidayPrice;
}
public void setHolidayPrice(float holidayPrice) {
	this.holidayPrice = holidayPrice;
}
public float getSalePrice() {
	return salePrice;
}
public void setSalePrice(float salePrice) {
	this.salePrice = salePrice;
}

}
