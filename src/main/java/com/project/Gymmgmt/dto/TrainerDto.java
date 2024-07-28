package com.project.Gymmgmt.dto;

public class TrainerDto {
	private int id;
	private String name;
	private String specialty;
	private int experience;
	private String contactInfo;

	public TrainerDto() {
	}

	public TrainerDto(int id, String name, String specialty, String certification, int experience, String contactInfo) {
		this.id = id;
		this.name = name;
		this.specialty = specialty;

		this.experience = experience;
		this.contactInfo = contactInfo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getContactInfo() {
		return contactInfo;
	}

	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}
}
