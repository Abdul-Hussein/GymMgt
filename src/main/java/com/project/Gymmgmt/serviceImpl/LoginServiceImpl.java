package com.project.Gymmgmt.serviceImpl;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.Gymmgmt.dto.LoginDto;
import com.project.Gymmgmt.model.Admin;
import com.project.Gymmgmt.model.User;
import com.project.Gymmgmt.repository.AdminRepository;
import com.project.Gymmgmt.repository.UserRepository;
import com.project.Gymmgmt.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	UserRepository userRepository;

	@Autowired
	HttpSession httpsession;

	@Autowired
	AdminRepository adminRepository;

	@Override
	public boolean registerUser(LoginDto login) {

		try {
			User ob = new User();
			int hashCode = login.getPassword().hashCode();
			ob.setCreatedDate(new Date());
			ob.setEmail(login.getEmail());
			ob.setId(login.getId());
			ob.setModifiedDate(login.getModifiedDate());
			ob.setName(login.getUserName());
			ob.setPassword(String.valueOf(hashCode));
			userRepository.save(ob);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean updateUser(LoginDto login) {

		try {
			java.util.Optional<User> optional = userRepository.findById(login.getId());
			if (optional.isPresent()) {
				User logs = optional.get();
				logs.setCreatedDate(login.getCreatedDate());
				logs.setEmail(login.getEmail());
				logs.setId(login.getId());
				logs.setName(login.getUserName());
				logs.setModifiedDate(login.getModifiedDate());
				logs.setPassword(login.getPassword());
				userRepository.save(logs);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		// TODO Auto-generated method stub
		return true;

	}

	@Override
	public boolean loginUser(LoginDto login) {
		try {
			int hashCode = login.getPassword().hashCode();
			String password = String.valueOf(hashCode);
			// TODO Auto-generated method stub
			String userName = login.getUserName();
			User user = userRepository.findByUserNameAndPassword(userName, password);
			if (user == null) {
				return false;
			} else {

				httpsession.setAttribute("active", "member");
				httpsession.setAttribute("userName", userName);
				httpsession.setAttribute("userId", user.getId());
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean loginAdmin(LoginDto login) {
		// TODO Auto-generated method stub
		try {
			int hashCode = login.getPassword().hashCode();
			String password = String.valueOf(hashCode);

			String userName = login.getUserName();

			Admin admin = adminRepository.findByUserNameAndPassword(userName, password);
			System.out.println("Admin"+admin);
			if (admin == null) {
				return false;
			} else {
				
				httpsession.setAttribute("active", "admin");
				httpsession.setAttribute("userName", userName);
				httpsession.setAttribute("userId", admin.getId());
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}
