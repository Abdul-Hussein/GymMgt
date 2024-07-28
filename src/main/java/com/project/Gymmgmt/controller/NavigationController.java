package com.project.Gymmgmt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigationController {

	@RequestMapping(value = { "/", "/login" })
	public String employee() {

		return "user/login";
	}

	@RequestMapping(value = { "/register" })
	public String registrationPage() {

		return "user/register";

	}

	@RequestMapping(value = { "/admin" })
	public String adminLoginPage() {

		return "user/adminLogin";
	}

	@RequestMapping(value = { "/api/sessions/view" })
	public String displaySessionPage() {

		return "user/sessions";
	}

	@RequestMapping(value = { "/trainers/view" })
	public String displayTrainersPage() {
		return "user/trainers";
	}

	@RequestMapping(value = { "/packages/view" })
	public String getPackageController() {
		return "user/package"; // This should correspond to a JSP file named package.jsp in the
								// WEB-INF/view/user directory
	}

	@RequestMapping(value = { "/api/gymMemberships/view" })
	public String displayGymMembershipPage() {
		return "user/gymmembership";
	}

}
