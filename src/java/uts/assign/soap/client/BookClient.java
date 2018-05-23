/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign.soap.client;

import java.util.Scanner;

public class BookClient {

    public static void main(String[] args) throws Exception_Exception, IOException_Exception, JAXBException_Exception {

        BookApp locator = new BookApp();
        BookSOAP bookApp = locator.getBookSOAPPort();
        
        DiaryApp locator2 = new DiaryApp();
        DiarySOAP diaryApp = locator2.getDiarySOAPPort();
        
        int option = 1;

        Scanner scanner = new Scanner(System.in);
        int input = 1;
        while (input != 0) {
            System.out.println("Press 1: Login");
            System.out.println("Press 2: Get textbook list");
            System.out.println("Press 0: Exit");
            input = scanner.nextInt();
            switch (input) {
                case 1:
                    System.out.println("Email: ");
                    String email = scanner.next();
                    System.out.println("Password: ");
                    String password = scanner.next();
                            
                    User user = diaryApp.loginUser(email, password);
                            
                    if (user != null) {
                    //user.login();
                    //logged in code
                        System.out.println("Successfully logged into < " + email + " >");
                        System.out.println("");
                    {
                        while (input != 0) {
                            System.out.println("Press 1: List a textbook");
                            System.out.println("Press 2: Get textbook list");
                            System.out.println("Press 3: Delete a textbook");
                            System.out.println("Press 4: Logout");
                            System.out.println("Press 0: Exit");
                            input = scanner.nextInt();
                            switch (input) {
                                case 1:
                                    System.out.println("Title: ");
                                    String title = scanner.next();
                                    System.out.println("Author: ");
                                    String author = scanner.next();
                                    System.out.println("Abstract: ");
                                    String absstract = scanner.next();
                                    System.out.println("public Info: ");
                                    String pubInfo = scanner.next();
                                    System.out.println("Condition: ");
                                    System.out.println("    Press 1: Poor ");
                                    System.out.println("    Press 2: Fair ");
                                    System.out.println("    Press 3: Good ");
                                    System.out.println("    Press 4: New ");
                                    String condition = "";
                                    input = scanner.nextInt();
                                    switch (input) {
                                        case 1:
                                            condition = "poor";
                                            break;
                                            
                                        case 2:
                                            condition = "fair";
                                            break;
                                            
                                        case 3:
                                            condition = "good";
                                            break;
                                            
                                        case 4:
                                            condition = "new";
                                            break;
                                            
                                    }
                                    
                                    bookApp.addBooks(title, author, absstract, pubInfo, condition, email);
                                    System.out.println("Book added!");
                                    break;

                                case 2:
                                    //System.out.println(Book id);
                                    break;

                                case 3:
                                    //Books book = bookApp.fetchBooks();
                                    //bookApp.deleteBook(book);
                                    break;

                                case 4:
                                    break;

                            }
                        }
                    }
            
                    }
            //else login failed message
            break;

        
    

                    case 2:
                    break;
            }

        }

    }

}
