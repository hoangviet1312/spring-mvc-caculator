package showcase.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CaculatorController {
    @GetMapping("/")
    public String show() {
        return "index";
    }

    @GetMapping("/result")
    public String result(@RequestParam("number1") double number1,
                         @RequestParam("number2") double number2,
                         @RequestParam("operator") String operator,
                         Model model) {
        double select = calculator(number1, number2, operator);
        model.addAttribute("number1", number1);
        model.addAttribute("number2", number2);
        model.addAttribute("select", select);
        return "index";
    }

    private double calculator(double number1, double number2, String operator) {
        double result;
        switch (operator) {
            case "+":
                return number1 + number2;
            case "-":
                return number1 - number2;
            case "*":
                return number1 * number2;
            case "/":
                if (number2 == 0) {
                    throw new ArithmeticException("Can't divison zero");
                } else {
                    return number1 / number2;
                }
            default:
                throw new RuntimeException("aaaaaa");

        }
    }
}
