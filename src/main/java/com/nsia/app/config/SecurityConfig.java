package com.nsia.app.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
		web.ignoring().antMatchers("/css/**");
		web.ignoring().antMatchers("/jsp/**");
	}

	 @Override
	    protected void configure(HttpSecurity http) throws Exception {
	        http.authorizeRequests()
	            .anyRequest().authenticated()
	            .and()
	            .formLogin()
	               .loginPage("/login")
	               .permitAll();
	    }



	 @Override
	    protected void configure(AuthenticationManagerBuilder builder) throws Exception {
	        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	        builder.inMemoryAuthentication().passwordEncoder(passwordEncoder)
	               .withUser("jalil").password(passwordEncoder.encode("123")).roles("USER")
	               .and()
	               .withUser("pardess").password(passwordEncoder.encode("234")).roles("ADMIN")
	        ;
	    }
}
