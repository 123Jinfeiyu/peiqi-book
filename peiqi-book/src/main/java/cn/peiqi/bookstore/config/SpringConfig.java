package cn.peiqi.bookstore.config;

import org.springframework.context.annotation.*;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

@Configuration
@EnableTransactionManagement
@Import({MybatisConfig.class})
@ComponentScan(value = "cn.peiqi.bookstore", excludeFilters = {
        @ComponentScan.Filter(type = FilterType.ANNOTATION, classes = Controller.class)
})
public class SpringConfig {

    @Bean
    public DataSourceTransactionManager  dataSourceTransactionManager(DataSource druidDataSource) {
        DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager();
        dataSourceTransactionManager.setDataSource(druidDataSource);
        return dataSourceTransactionManager;
    }


}
