/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign.soap.client;

import java.util.Scanner;

/**
 *
 * @author Corey's-PC
 
public class BookClient {
    
  public static void main(String[] args) throws Exception_Exception, IOException_Exception, JAXBException_Exception {
  
  BookApp locator = new BookApp();
  BookSOAP bookApp = locator.getBookSOAPPort();
  int option = 1;
  
    Scanner scanner = new Scanner(System.in);
    String input = "";
    while(input != "end") {
        System.out.print("Press 1: Login");
        System.out.print("Press 1: Login");
        System.out.print("Press 1: Login");
        System.out.print("Press 1: Login");
        System.out.print("Press 1: Login");
    }
  
  
  
  switch(option) {
      
  }
  
  
  }
**/