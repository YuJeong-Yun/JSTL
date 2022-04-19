package com.itwillbs.jstl;

public class Person {
	private String name;
	private int age;
	private Phone ph;

	public Person(String name, int age, Phone ph) {
		this.name = name;
		this.age = age;
		this.ph = ph;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Phone getPh() {
		return ph;
	}

	public void setPh(Phone ph) {
		this.ph = ph;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", ph=" + ph + "]";
	}

}
