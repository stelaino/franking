package top.stelaino.fk;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author huang.jincheng
 * @description :
 * @since 2021/11/16 23:59
 */
@SpringBootApplication
@MapperScan("top.stelaino.fk.db")
public class RepositoryApplication {
    public static void main(String[] args) {
        SpringApplication.run(RepositoryApplication.class);
    }
}
