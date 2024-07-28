package com.project.Gymmgmt.dto;

public class PackageDto {
	private int id;
	private String packageName;
	private String description;
	private int price;
	private int duration;



	public PackageDto(int id, String packageName, String description, int price, int duration) {
		this.id = id;
		this.packageName = packageName;
		this.description = description;
		this.price = price;
		this.duration = duration;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}
}
