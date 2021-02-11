/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pizza.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
class Ingredient implements Serializable {
      @Id
    private Long id;
    private String nameOfIng;

    public Ingredient() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNameOfIng() {
        return nameOfIng;
    }

    public void setNameOfIng(String nameOfIng) {
        this.nameOfIng = nameOfIng;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Ingredient{id=").append(id);
        sb.append(", nameOfIng=").append(nameOfIng);
        sb.append('}');
        return sb.toString();
    }
    
    
    
    
    
    
}
