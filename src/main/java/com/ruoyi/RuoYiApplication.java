package com.ruoyi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author eelic
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class}, scanBasePackages = { "com.ruoyi.*", "com.eelic.*" })
public class RuoYiApplication
{
    public static void main(String[] args) throws Exception {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(RuoYiApplication.class, args);
        System.out.println("                                             \n" +
                " ~~~~~~~~~~~~~~~~EELIC SMEs CPS RUN~~~~~~~~~~~~~~~~     \n" +
                "                                                        \n" +
                "         //////////   ///    ///   //////////           \n" +
                "        ///    ///   ///    ///   ///    ///            \n" +
                "       //////////   ///    ///   ///    ///             \n" +
                "      ///   |||    ///    ///   ///    ///              \n" +
                "     ///    |||   //////////   ///    ///               \n" +
                "                                                        \n" +
                "                     Good Job                           \n" +
                " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     \n" +
                "               Enjoy your coding life                    ");

    }
}

