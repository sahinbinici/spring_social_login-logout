package config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableTransactionManagement
@ComponentScan("src")
@PropertySource("classpath:/datasource-cfg.properties")
public class ApplicationContextConfig {

	@Autowired
	private Environment env;
	
	@Bean
	public ResourceBundleMessageSource messageResource(){
		ResourceBundleMessageSource rb=new ResourceBundleMessageSource();
		rb.setBasenames(new String[]{"messages/validator"});
		return rb;
	}
	
	@Bean(name="viewResolver")
	public InternalResourceViewResolver getResolver(){
		InternalResourceViewResolver resolver=new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean(name="dataSource")
	public DataSource getDataSource(){
		DataSource dataSource=new DataSource();
		
		dataSource.setDriverClassName(env.getProperty("ds.database-driver"));
		dataSource.setUrl(env.getProperty("ds.database-url"));
		dataSource.setUsername(env.getProperty("ds.database-username"));
		dataSource.setPassword(env.getProperty("ds.database-password"));
		return dataSource;
	}
	@Autowired
	@Bean(name="transactionManager")
	public DataSourceTransactionManager getTransactionManager(DataSource dataSource){
		DataSourceTransactionManager transactionManager=new DataSourceTransactionManager(dataSource);
		return transactionManager;
	}
}
