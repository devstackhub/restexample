package com.nttdata.config;

import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;

@Configuration
@OpenAPIDefinition(info = @Info(title = "Rest Example", version = "1.0", description = "An example Rest endpoints", contact = @Contact(email = "joby.pooppillikudiyil@nttdata.com", name = "Joby Pooppillikudiyil")))
public class SwaggerConfig {

}
