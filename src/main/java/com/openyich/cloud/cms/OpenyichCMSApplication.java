package com.openyich.cloud.cms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories({"com.openyich.cloud.cms.repository"})
@EntityScan({"com.openyich.cloud.cms.domain"})
public class OpenyichCMSApplication {

  public static void main(String[] args) {
    SpringApplication.run(OpenyichCMSApplication.class, args);
  }

}
