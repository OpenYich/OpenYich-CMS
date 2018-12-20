package com.openyich.framework.cloud.cms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.openyich.framework.boot.annotation.EnableJpaRepositoryBasic;

@SpringBootApplication
@EnableJpaRepositoryBasic
public class OpenyichCMSApplication {

  public static void main(String[] args) {
    SpringApplication.run(OpenyichCMSApplication.class, args);
  }

}
