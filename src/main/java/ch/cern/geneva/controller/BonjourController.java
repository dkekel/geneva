package ch.cern.geneva.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BonjourController {

  @GetMapping("/bonjour")
  public ResponseEntity<String> answerToHi() {
    return ResponseEntity.ok("Meyrin Says Hi to Krakow!");
  }
}
