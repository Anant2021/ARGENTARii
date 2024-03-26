package com.mybank.config;


import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


@Configuration
@EnableAutoConfiguration
@ComponentScan(basePackages = { "com.mybank" })
public class AppConfig extends WebMvcConfigurationSupport {
    
    
    
    private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
            "classpath:/META-INF/resources/", "classpath:/resources/",
            "classpath:/static/", "classpath:/public/"
    };

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**")
                .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS);
    }
    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver jspVr = new InternalResourceViewResolver();
        jspVr.setPrefix("/WEB-INF/");
        jspVr.setSuffix(".jsp");
        jspVr.setViewClass(JstlView.class);
        return jspVr;
    }

}
