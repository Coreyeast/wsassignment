package uts.assign.rest;
 
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import java.util.ArrayList;
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
   BookApplication bookApp = (BookApplication)application.getAttribute("bookApp");
   if (bookApp == null) {
    bookApp = new BookApplication();
    bookApp.setFilePath(application.getRealPath("WEB-INF/books.xml"));
    application.setAttribute("bookApp", bookApp);
   }
   return bookApp;
  }
 }
 
 /** YOUR METHODS WILL BE INSERTED HERE **/
// return getBookApp.getUser.getUserEmail(email)

@GET
@Path("books")
@Produces(MediaType.APPLICATION_XML)
public Books getBooks() throws JAXBException, IOException, Exception {
    return getBookApp().getBooks();
}

@GET
@Path("books/lister/{lister}")
@Produces(MediaType.APPLICATION_XML)
public ArrayList<Book> getLister(@PathParam("lister") String lister) throws JAXBException, IOException, Exception {
    return getBooks().getBookLister(lister);

}

/**       we haven't added the status feature yet
@GET
@Path("books/status/{status}")
@Produces(MediaType.APPLICATION_XML)
public ArrayList<Book> getStatus(@PathParam("status") String status) throws JAXBException, IOException, Exception {
    return getBooks().getBookStatus(status);

}

**/ 
 

@GET
@Path("books/condition/{condition}")
@Produces(MediaType.APPLICATION_XML)
public ArrayList<Book> getCondition(@PathParam("condition") String condition) throws JAXBException, IOException, Exception {
    return getBooks().getBookCondition(condition);

}


 
}