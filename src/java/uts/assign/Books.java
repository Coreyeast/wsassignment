/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign;
 
import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.concurrent.atomic.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="books")
public class Books implements Serializable {
    
    @XmlElement(name = "book")
    private ArrayList<Book> list = new ArrayList<Book>();
    private int idGenerator = 2;
    
    public Books() {
        //idk what this does
    }
    public ArrayList<Book> getList() {
        return list;
    }       
    public void addBook(Book book) {
        list.add(book);
    }
    public void removeBook(Book book) {
        list.remove(book);
    }
    
    public int createID() { //U_ID java lib
        this.idGenerator = idGenerator + 1;
        return idGenerator;
    }
    
    public ArrayList<Book> getBookLister(String lister) {
        ArrayList<Book> listedBooks = new ArrayList<Book>();
        for (Book book : list) {
            if (book.getLister().equalsIgnoreCase(lister)){
                listedBooks.add(book);
            }
        }
        return listedBooks;
    }
    
    public Book getBookName(String name) {
        for (Book book : list) {
            if (book.getTitle().equalsIgnoreCase(name)){
                return book;
            }
        }
        return null;
    }

    public Book getID(int id) {
        for (Book book : list) {
            if (book.getId() == id){
                return book;
            }
        }
        return null;
    }
    
    
    public ArrayList<Book> getBookCondition(String condition) {
        ArrayList<Book> conditionBooks = new ArrayList<Book>();
        for (Book book : list) {
            if (book.getCondition().equalsIgnoreCase(condition)){
                conditionBooks.add(book);
            }
        }
        return conditionBooks;
    }

   
/**  FYI we haven't added the status feature yet

    public ArrayList<Book> getBookStatus(String status) {
        ArrayList<Book> statusBooks = new ArrayList<Book>();
        for (Book book : list) {
            if (book.getStatus().equalsIgnoreCase(status)){
                statusBooks.add(book);
            }
        }
        return statusBooks;
    }
**/

}
