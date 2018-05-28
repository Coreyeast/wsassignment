/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign.soap;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.servlet.ServletContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;
import uts.assign.BookApplication;
import uts.assign.Book;
import uts.assign.Books;

/**
 *
 * @author Corey's-PC
 */
@WebService(serviceName = "bookApp")
public class BookSOAP {

    @Resource
    private WebServiceContext context;

    @WebMethod
    public Books fetchBooks() throws JAXBException, IOException, Exception {
        return getBookApp().getBooks();
    }
    
    @WebMethod
    public List<Book> fetchArray() throws JAXBException, IOException, Exception {
        Books books = fetchBooks();
        List<Book> values = new ArrayList<>(books.getList());
        return values;
    }
        
    @WebMethod
    public void addBooks(String title, String author, String absstract, String pubInfo, String condition, String lister ) throws JAXBException, IOException, Exception {
        fetchBooks().addBook(new Book(fetchBooks().createID(), title, author, absstract, pubInfo, condition, lister));
    }
    
    @WebMethod
    public void deleteBook(int id) throws JAXBException, IOException, Exception {
        Book book = fetchBooks().getID(id);
        fetchBooks().removeBook(book);
    }
    
    private BookApplication getBookApp() throws JAXBException, IOException, Exception {
        ServletContext application = (ServletContext) context.getMessageContext().get(MessageContext.SERVLET_CONTEXT);

        synchronized (application) {
            BookApplication bookApp = (BookApplication) application.getAttribute("bookApp");
            if (bookApp == null) {
                bookApp = new BookApplication();
                bookApp.setFilePath(application.getRealPath("WEB-INF/books.xml"));
                application.setAttribute("bookApp", bookApp);
            }
            return bookApp;
        }

    }


}