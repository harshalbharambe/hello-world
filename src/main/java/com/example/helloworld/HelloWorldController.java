package com.example.helloworld;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
	
	@Value("${com.example.message:Default-Message}")
    private String message;
	
	 @GetMapping("/hello")
	    public String getMessage() {
	        return message;
	    }
	
	 @GetMapping("/message")
	    public String getMessage2() {
	        return "Hello Msg";
	    }
	 
	 @GetMapping("/")
	    public String getMessage3() {
	        return "Hello World !!!		++	MASTER";
	    }
	 

}
