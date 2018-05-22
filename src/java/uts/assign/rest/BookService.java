package uts.assign.rest;

import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import uts.assign.BookApplication;
import uts.assign.*;

@Path("/bookApp")
public class BookService {

    @Context
    private ServletContext application;

    private BookApplication getBookApp() throws JAXBException, IOException, Exception {
        // The web server can handle requests from different clients in parallel.
        // These are called "threads".
        //
        // We do NOT want other threads to manipulate the application object at the same
        // time that we are manipulating it, otherwise bad things could happen.
        //
        // The "synchronized" keyword is used to lock the application object while
        // we're manpulating it.
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
 
    @GET
    @Path("books")
    @Produces(MediaType.APPLICATION_XML)
    public Books getBooks() throws JAXBException, IOException, Exception {
        return getBookApp().getBooks();
    }
    
    /** 
     * 
     * OLD METHODS *
     * 
    @GET
    @Path("books/lister/{lister}")
    @Produces(MediaType.APPLICATION_XML)
    public ArrayList<Book> getLister(@PathParam("lister") String lister) throws JAXBException, IOException, Exception {
        return getBooks().getBookLister(lister);

    }
    **/
    
    
    @GET
    @Path("books/filter")
    @Produces(MediaType.APPLICATION_XML)
    public List<Book> getBooks(@QueryParam("condition") String condition, @QueryParam("lister") String lister) throws Exception {
        //List<Book> values = new ArrayList<>();
        Books books = getBooks();
        List<Book> values = new ArrayList<>(books.getList());
        List<Book> toRemove = new ArrayList<>(); //a list of values we need to remove after iteration
        //Iterator it = values.iterator();

        if (condition != null) {

            for (Iterator<Book> it = values.iterator(); it.hasNext();) {
                Book book = it.next();
                if (!book.getCondition().equalsIgnoreCase(condition)) {
                    toRemove.add(book);
                }
            }
            if (!toRemove.isEmpty()) {
                values.removeAll(toRemove); //adds to the removal list
                toRemove.clear();  //removed the values before next iteration
            }
        }

        if (lister != null) {
            for (Iterator<Book> it = values.iterator(); it.hasNext();) {
                Book book = it.next();
                if (!book.getLister().equalsIgnoreCase(lister)) {
                    toRemove.add(book); 
                }
            }
            if (!toRemove.isEmpty()) {
                values.removeAll(toRemove);
                toRemove.clear();
            }
        }

        return values;
    }

    /**
     * we haven't added the status feature yet
     *
     * @GET
     * @Path("books/status/{status}")
     * @Produces(MediaType.APPLICATION_XML) public ArrayList<Book>
     * getStatus(@PathParam("status") String status) throws JAXBException,
     * IOException, Exception { return getBooks().getBookStatus(status);
     *
     * }
     *
     *
     */
    /**
     * we haven't added the status feature yet
     *
     * @GET
     * @Path ("books/status/{status}")
     * @Produces (MediaType.APPLICATION_XML) public ArrayList<Book>
     * getStatus(@PathParam("status") String status) throws JAXBException,
     * IOException, Exception { return getBooks().getBookStatus(status);
     *
     * }
     */
    @GET
    @Path("books/condition/{condition}")
    @Produces(MediaType.APPLICATION_XML)
    public ArrayList<Book> getCondition(@PathParam("condition") String condition) throws JAXBException, IOException, Exception {
        return getBooks().getBookCondition(condition);

    }

}
