package pizza.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import pizza.entity.Order;



@Controller
 @RequestMapping("/pizza")
public class PizzaController {
    
    
 
    
   @GetMapping()
   public String showOrderForm(Model model){
       Order order = new Order();
       model.addAttribute("order", order);
       return "orderform";
   }
   
   @PostMapping("/createorder")
     public String create(@ModelAttribute ("order") Order order, Model model){
        String minima = "You Ordered a nice Pizza!";
         model.addAttribute("order",order);
        model.addAttribute("minima", minima);
        return "display";
    } 
     
     
     
   }
    

