package com;

public class ShopCar{
    private String name;
    private String maker;
    public ShopCar(){
        name="noname";
        maker="noplace";
     }
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}