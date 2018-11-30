package com.vitan;

public class Circle {
	int radius;
	public Circle() {
	radius = 1;
	}
	public int getRadius() {
		return radius;
	}
	public void setRadius(int radius) {
		this.radius = radius;
	}
	public double CircleArea() {
		return Math.PI*radius*radius;
	}
	public double CircleLength() {
		return Math.PI*radius*2.0;
	}
}
