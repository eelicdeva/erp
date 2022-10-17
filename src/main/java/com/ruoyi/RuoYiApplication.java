package com.ruoyi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

import static com.ruoyi.common.translator.Translator.translate;


/**
 * 启动程序
 * 
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
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
