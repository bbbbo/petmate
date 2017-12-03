package model;

public class SellDTO {
	private String userID;
	private String sell_ID;
	private String item_name;
	private String item_kind_ID;
	private int item_price;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getSell_ID() {
		return sell_ID;
	}
	public void setSell_ID(String sell_ID) {
		this.sell_ID = sell_ID;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_kind_ID() {
		return item_kind_ID;
	}
	public void setItem_kind_ID(String item_kind_ID) {
		this.item_kind_ID = item_kind_ID;
	}
	public int getItem_price() {
		return item_price;
	}
	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}
	public SellDTO() { };
   
   public SellDTO(String userID, String sell_ID, String item_name, String item_kind_ID, int item_price){
      this.userID = userID;
      this.sell_ID = sell_ID;
      this.item_name = item_name;
      this.item_kind_ID = item_kind_ID;
      this.item_price = item_price;
   }
	
}
