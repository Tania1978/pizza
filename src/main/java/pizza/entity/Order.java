/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pizza.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import org.springframework.format.annotation.DateTimeFormat;


public class Order implements Serializable {

    
    private String breadSize;
    private String [] ingredients;
    private String paymentMethod;
    private String name;
    private int age;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateOfDelivery;

  

    public Order() {
       
    }

    public String getBreadSize() {
        return breadSize;
    }

    public void setBreadSize(String breadSize) {
        this.breadSize = breadSize;
    }

    public String[] getIngredients() {
        return ingredients;
    }

    public void setIngredients(String[] ingredients) {
        this.ingredients = ingredients;
    }

   
 

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public LocalDate getDateOfDelivery() {
        return dateOfDelivery;
    }

    public void setDateOfDelivery(LocalDate dateOfDelivery) {
        this.dateOfDelivery = dateOfDelivery;
    }
    
    
}
