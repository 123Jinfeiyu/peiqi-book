package cn.peiqi.bookstore.config;


import lombok.extern.java.Log;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@ComponentScan("cn.peiqi.bookstore.controller")
@EnableWebMvc
@Log
public class WebMvcConfig implements WebMvcConfigurer {

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/bookstore/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);
        resolver.setExposeContextBeansAsAttributes(true);
        return resolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resource/**").addResourceLocations("/resource/assets/");
        registry.addResourceHandler("/").addResourceLocations("/WEB-INF/bookstore/");
        log.info("123123213");
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/left").setViewName("jsp/left");
        registry.addViewController("/top").setViewName("jsp/top");
        registry.addViewController("/body").setViewName("jsp/body");
//        registry.addViewController("/user").setViewName("jsp/user/list");
        registry.addViewController("/user/add").setViewName("jsp/user/add");
//        registry.addViewController("/user/modify").setViewName("jsp/user/modify");
    }
}
