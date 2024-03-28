package com.mybank.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
public class User {

  @Id
  private  int userId;
   @NotEmpty(message = "The First Name field Cannot be empty")
   @Size(min = 3) private  String  firstName;
@NotEmpty
    private  String lastName;
    @NotEmpty
    @Pattern(regexp = "([a-zA-Z0-9]+(?:[._+-][a-zA-Z0-9]+)*)@([a-zA-Z0-9]+(?:[.-][a-zA-Z0-9]+)*[.][a-zA-Z]{2,})\", message = \"Please Enter a Valid Email")
    private  String  email;
    @NotEmpty @NotNull private  String  password;
    private  String token;
    private  int code;
    private  int verified;
    private LocalDate verifiedAt;
    private LocalDateTime createdAt;
    private  LocalDateTime modefiedAt;
   }
