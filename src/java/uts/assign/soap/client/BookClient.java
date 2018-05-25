/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign.soap.client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class BookClient {

    public static void main(String[] args) throws Exception_Exception, IOException_Exception, JAXBException_Exception {

        BookApp locator = new BookApp();
        BookSOAP bookApp = locator.getBookSOAPPort();

        DiaryApp locator2 = new DiaryApp();
        DiarySOAP diaryApp = locator2.getDiarySOAPPort();

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
                            while (input != 0 && user != null) {
                                System.out.println("Press 1: List a textbook");
                                System.out.println("Press 2: Get textbook list");
                                System.out.println("Press 3: Delete a textbook");
                                System.out.println("Press 4: Logout");
                                System.out.println("Press 0: Exit");
                                input = scanner.nextInt();

                                switch (input) {
                                    case 1:
                                        scanner.nextLine();
                                        System.out.println("Title: ");
                                        String title = scanner.nextLine();
                                        System.out.println("Author: ");
                                        String author = scanner.nextLine();
                                        System.out.println("Abstract: ");
                                        String absstract = scanner.nextLine();
                                        System.out.println("public Info: ");
                                        String pubInfo = scanner.nextLine();
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

                                        bookApp.addBooks(title, author, absstract, pubInfo, condition, user.getEmail());
                                        System.out.println("Book added!");
                                        break;

                                    case 2:
                                        List<Book> values = bookApp.fetchArray();

                                        for (Book book : values) {
                                            System.out.println("** Book " + book.getId() + " **");
                                            System.out.println("");
                                            System.out.println("Title: " + book.getTitle());
                                            System.out.println("Author: " + book.getAuthor());
                                            System.out.println("Abstract: " + book.getAbstract());
                                            System.out.println("Public Info: " + book.getPubInfo());
                                            System.out.println("Condition: " + book.getCondition());
                                            System.out.println("Status: " + book.getStatus());
                                            System.out.println("");
                                            System.out.println("*************");
                                            System.out.println("");
                                        }
                                        break;
                                    //System.out.println(Book id);

                                    case 3:
                                        List<Book> value = bookApp.fetchArray();
                                        List<Book> toRemove = new ArrayList<>();

                                        System.out.println("Insert the books ID: ");
                                        int deleteId = scanner.nextInt();
                                        for (Iterator<Book> it = value.iterator(); it.hasNext();) {
                                            Book books = it.next();
                                            if (deleteId == books.getId()) {
                                                toRemove.add(books);
                                                System.out.println("The book <" + books.getTitle() + "> with the id <" + books.getId()+ "> has been successfully removed!");
                                                break;
                                            }
                                        }
                                        if (!toRemove.isEmpty()) {
                                            bookApp.deleteBook(deleteId);//adds to the removal list
                                            toRemove.clear();  //removed the values before next iteration
                                        }
                                        break;

                                    case 4:
                                        user = null;
                                        break;

                                }
                            }
                        }

                    } else {
                        System.out.println("Login unsuccessfull - Please try again!");
                        System.out.println("");
                    }
                    break;

                case 2:

                    List<Book> values = bookApp.fetchArray();

                    for (Book book : values) {
                        System.out.println("** Book " + book.getId() + " **");
                        System.out.println("");
                        System.out.println(book.getTitle());
                        System.out.println(book.getAuthor());
                        System.out.println(book.getAbstract());
                        System.out.println(book.getPubInfo());
                        System.out.println(book.getCondition());
                        System.out.println(book.getStatus());
                        System.out.println("");
                        System.out.println("*************");
                        System.out.println("");
                    }
                    break;
            }

        }

    }

}
