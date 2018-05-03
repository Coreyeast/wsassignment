package uts.assign;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.*;

import javax.xml.bind.*;

public class BookApplication {
    private String filePath;
    private Books books;
    
    public BookApplication () {
        
    }
    public BookApplication(String filePath, Books books) {
        this.filePath = filePath;
        this.books = books;
    }
    
    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath)  throws Exception{
        
      //create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Books.class);
        Unmarshaller u = jc.createUnmarshaller();
        
        this.filePath = filePath;
        
        //unmarshall object from file
        FileInputStream fin = new FileInputStream(filePath);
        books = (Books)u.unmarshal(fin);
        fin.close();
    }
    
    
     public void updateXML(Books books, String filePath) throws Exception {
        this.books = books;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Books.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(books, fout);
        fout.close();
    }
     
     public void saveBooks() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Books.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(books, fout);
        fout.close();
    }
       public Books getBooks() {
        return books;
    }
       
       public void setBooks(Books books) {
        this.books = books;
    }
}

