package model;

public class AdoptDTO {
	private String userID;
	private String adopt_ID;
	private String adopt_price;
	private String adopt_age;
	private String adopt_kind;
	private String adopt_gender;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getAdopt_ID() {
		return adopt_ID;
	}
	public void setAdopt_ID(String adopt_ID) {
		this.adopt_ID = adopt_ID;
	}
	public String getAdopt_price() {
		return adopt_price;
	}
	public void setAdopt_price(String adopt_price) {
		this.adopt_price = adopt_price;
	}
	public String getAdopt_age() {
		return adopt_age;
	}
	public void setAdopt_age(String adopt_age) {
		this.adopt_age = adopt_age;
	}
	public String getAdopt_kind() {
		return adopt_kind;
	}
	public void setAdopt_kind(String adopt_kind) {
		this.adopt_kind = adopt_kind;
	}
	public String getAdopt_gender() {
		return adopt_gender;
	}
	public void setAdopt_gender(String adopt_gender) {
		this.adopt_gender = adopt_gender;
	}

public AdoptDTO() { };
   
   public AdoptDTO(String userID, String adopt_ID, String adopt_price, String adopt_age, String adopt_kind, String adopt_gender){
      this.userID = userID;
      this.adopt_ID = adopt_ID;
      this.adopt_price = adopt_price;
      this.adopt_age = adopt_age;
      this.adopt_kind = adopt_kind;
      this.adopt_gender = adopt_gender;
   }
   
	
	
}