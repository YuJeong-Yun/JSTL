package com.itwillbs.jstl;

public class Phone {

	private String model, color;

	public Phone(String model, String color) {
		this.model = model;
		this.color = color;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "Phone [model=" + model + ", color=" + color + "]";
	}

}
