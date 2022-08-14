package bean;

import java.sql.Date;

public class PriceChange {
	private int PriceChangeID;
	private Date ChangeDate;
	private String OpratorType;
	private String PriceType;
	private float OldPrice;
	private int proID;
	private float NewPrice;

	public int getProID() {
		return proID;
	}
	public void setProID(int proID) {
		this.proID = proID;
	}

	public int getPriceChangeID() {
		return PriceChangeID;
	}
	public void setPriceChangeID(int PriceChangeID) {
		this.PriceChangeID = PriceChangeID;
	}

	public Date getChangeDate() {
		return ChangeDate;
	}
	public void setChangeDate(Date ChangeDate) {
		this.ChangeDate=ChangeDate;
	}

	public float getOldPrice() {
		return OldPrice;
	}
	public void setOldPrice(float OldPrice) {
		this.OldPrice = OldPrice;
	}

	public float getNewPrice() {
		return NewPrice;
	}
	public void setNewPrice(float NewPrice) {
		this.NewPrice = NewPrice;
	}


	public String getOpratorType() {
		return OpratorType;
	}
	public void setOpratorType(String OpratorType) {
		this.OpratorType =OpratorType;
	}


	public String getPriceType() {
		return PriceType;
	}
	public void setPriceType(String PriceType) {
		this.PriceType =PriceType;
	}

















}
