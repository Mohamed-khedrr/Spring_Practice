package main.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TaskModel {
    String userName , password , email , country , language ;
    String[] os ;
    double salary ;
}
