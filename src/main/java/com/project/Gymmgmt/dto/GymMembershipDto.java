package com.project.Gymmgmt.dto;

import java.time.LocalDate;

public class GymMembershipDto {
	private int id;
	private int membershipNumber;
	private String name;
	private LocalDate startDate;
	private LocalDate endDate;
	private String phoneNumber;

	// Constructor
	public GymMembershipDto(int id, int membershipNumber, String name, LocalDate startDate, LocalDate endDate,
			String membershipType, boolean isActive, String email, String phoneNumber) {
		this.id = id;
		this.membershipNumber = membershipNumber;
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
		this.phoneNumber = phoneNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMembershipNumber() {
		return membershipNumber;
	}

	public void setMembershipNumber(int membershipNumber) {
		this.membershipNumber = membershipNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
