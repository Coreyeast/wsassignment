/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign;
 
import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="books")
public class Books implements Serializable {
    
    @XmlElement(name = "book")
    private ArrayList<Book> list = new ArrayList<Book>();
    
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
}
