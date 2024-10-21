package com.example.demo.controller;

import com.example.demo.entity.Contact;
import com.example.demo.service.ContactService;

import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/contact")
public class ContactController {

    @Autowired
    private ContactService contactService;

    @RequestMapping
    public String showContactForm() {
        return "contact"; // This should map to your JSP page named contact.jsp
    }

    @PostMapping("/submit")
    public String submitContactForm(@Valid Contact contact, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "contact"; // Return to the form with errors
        }

        contactService.saveContact(contact);
        model.addAttribute("successMessage", "Your message has been sent successfully. We will get back to you soon.");
        return "redirect:/contact"; // Optionally return to the same page or redirect
    }
}
