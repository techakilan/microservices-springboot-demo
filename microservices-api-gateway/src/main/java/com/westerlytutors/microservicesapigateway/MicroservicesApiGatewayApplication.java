package com.westerlytutors.microservicesapigateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class MicroservicesApiGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(MicroservicesApiGatewayApplication.class, args);
	}

}
