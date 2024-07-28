package com.project.Gymmgmt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication // @Configuration,@EnableAutoConfiguration and @ComponentScan annotations
public class GymMgmtApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(GymMgmtApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(GymMgmtApplication.class, args);
	}

}
