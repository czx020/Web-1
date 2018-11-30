package com.vitan;

import java.io.UnsupportedEncodingException;

public class Student {
String name = null;
long number;
double weight,height;

public String getName() {
	try {
		name = new String(name.getBytes("iso-8859-1"),"utf-8");
	} catch (Exception e) {
		name = null;
	}
	return name;
}
public void setName(String name) {
	this.name = name;
}
public long getNumber() {
	return number;
}
public void setNumber(long number) {
	this.number = number;
}
public double getWeight() {
	return weight;
}
public void setWeight(double weight) {
	this.weight = weight;
}
public double getHeight() {
	return height;
}
public void setHeight(double height) {
	this.height = height;
}

}
