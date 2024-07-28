package com.project.Gymmgmt.service;

import com.project.Gymmgmt.dto.LoginDto;

public interface LoginService {
boolean registerUser(LoginDto login);

boolean updateUser(LoginDto login);


boolean loginUser(LoginDto login);

boolean loginAdmin(LoginDto login);
}
