package com.company.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.mail.javamail.*;



import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;


import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
@EnableScheduling //@scheduled활성화 시키기 위한 어노테이션
@EnableTransactionManagement //@Transactional 활성화 시키기 위한 어노테이션
@ComponentScan({"com.company.service","com.company.task"})
@MapperScan("com.company.mapper")
@Configuration
public class RootConfig {
   /*<bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
   <property name="dataSource" ref="ds"></property>
   </bean>*/
   
   @Bean
   public SqlSessionFactory sqlSessionFactory() throws Exception {
      SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
      sqlSessionFactoryBean.setDataSource(dataSource());
      return sqlSessionFactoryBean.getObject();
      
   }
   @Bean
   public DataSource dataSource() {
      
      HikariConfig hikariConfig = new HikariConfig();
      hikariConfig.setDriverClassName("oracle.jdbc.OracleDriver");
      hikariConfig.setJdbcUrl("jdbc:oracle:thin:@118.220.120.43:1521:xe");
      hikariConfig.setUsername("c##team");
      hikariConfig.setPassword("12345");
      
      HikariDataSource dataSource = new HikariDataSource(hikariConfig);
      return dataSource;
      
   }
   @Bean
   public DataSourceTransactionManager txManager() {
      return new DataSourceTransactionManager(dataSource());      
   }
   
 
   @Bean 
   public JavaMailSender mailSender(){
      
      JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
       
       mailSender.setHost("smtp.gmail.com");
       mailSender.setPort(587);
       mailSender.setUsername("parkgod971014@gmail.com");
       mailSender.setPassword("park65129584!");
       
       Properties javaMailProperties = new Properties();
       
       javaMailProperties.put("mail.smtp.starttls.enable", "true");
       javaMailProperties.put("mail.smtp.auth", "true");
       javaMailProperties.put("mail.transport.protocol", "smtp");
       javaMailProperties.put("mail.debug", "true");
       javaMailProperties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
       javaMailProperties.put("mail.smtp.ssl.protocols", "TLSv1.2");      
      
       mailSender.setJavaMailProperties(javaMailProperties);
       
       return mailSender;    
    }
   
}