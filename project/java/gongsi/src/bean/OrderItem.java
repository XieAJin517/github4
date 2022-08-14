package bean;

public class OrderItem {
	private int proID;
	private String proName;
	private String kindName;
	private float buyprice;
	private float buyNum;
	private float totalMoney;  //½ð¶îÐ¡¼Æ

	private int orderID;
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
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
	public String getKindName() {
		return kindName;
	}
	public void setKindName(String kindName) {
		this.kindName = kindName;
	}

	public float getBuyprice() {
		return buyprice;
	}
	public void setBuyprice(float buyprice) {
		this.buyprice = buyprice;
	}
	public float getBuyNum() {
		return buyNum;
	}
	public void setBuyNum(float buyNum) {
		this.buyNum = buyNum;
	}
	public float getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(float totalMoney) {
		this.totalMoney = totalMoney;
	}

}
