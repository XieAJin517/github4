package bean;

public class Price {
private int proID;
private float inPrice;
private float salePrice;
private float holidayPrice;
private String proName;
private int  wharenum;

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

public float getInPrice() {
	return inPrice;
}
public void setInPrice(float inPrice) {
	this.inPrice = inPrice;
}

public float getSalePrice() {
	return salePrice;
}
public void setSalePrice(float salePrice) {
	this.salePrice = salePrice;
}

public float getHolidayPrice() {
	return holidayPrice;
}
public void setHolidayPrice(float holidayPrice) {
	this.holidayPrice = holidayPrice;
}
public int getWharenum() {
	return wharenum;
}
public void setWharenum(int wharenum) {
	this.wharenum = wharenum;
}
}