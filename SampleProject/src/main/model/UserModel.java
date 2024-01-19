package main.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@Getter@Setter
public class UserModel {
    private String name , birthDate ;
    private int days , months, years ;
}
