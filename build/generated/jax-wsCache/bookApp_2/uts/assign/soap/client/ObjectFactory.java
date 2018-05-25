
package uts.assign.soap.client;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the uts.assign.soap.client package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Exception_QNAME = new QName("http://soap.assign.uts/", "Exception");
    private final static QName _IOException_QNAME = new QName("http://soap.assign.uts/", "IOException");
    private final static QName _JAXBException_QNAME = new QName("http://soap.assign.uts/", "JAXBException");
    private final static QName _AddBooks_QNAME = new QName("http://soap.assign.uts/", "addBooks");
    private final static QName _AddBooksResponse_QNAME = new QName("http://soap.assign.uts/", "addBooksResponse");
    private final static QName _Book_QNAME = new QName("http://soap.assign.uts/", "book");
    private final static QName _Books_QNAME = new QName("http://soap.assign.uts/", "books");
    private final static QName _DeleteBook_QNAME = new QName("http://soap.assign.uts/", "deleteBook");
    private final static QName _DeleteBookResponse_QNAME = new QName("http://soap.assign.uts/", "deleteBookResponse");
    private final static QName _FetchArray_QNAME = new QName("http://soap.assign.uts/", "fetchArray");
    private final static QName _FetchArrayResponse_QNAME = new QName("http://soap.assign.uts/", "fetchArrayResponse");
    private final static QName _FetchBooks_QNAME = new QName("http://soap.assign.uts/", "fetchBooks");
    private final static QName _FetchBooksResponse_QNAME = new QName("http://soap.assign.uts/", "fetchBooksResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: uts.assign.soap.client
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Exception }
     * 
     */
    public Exception createException() {
        return new Exception();
    }

    /**
     * Create an instance of {@link IOException }
     * 
     */
    public IOException createIOException() {
        return new IOException();
    }

    /**
     * Create an instance of {@link JAXBException }
     * 
     */
    public JAXBException createJAXBException() {
        return new JAXBException();
    }

    /**
     * Create an instance of {@link AddBooks }
     * 
     */
    public AddBooks createAddBooks() {
        return new AddBooks();
    }

    /**
     * Create an instance of {@link AddBooksResponse }
     * 
     */
    public AddBooksResponse createAddBooksResponse() {
        return new AddBooksResponse();
    }

    /**
     * Create an instance of {@link Book }
     * 
     */
    public Book createBook() {
        return new Book();
    }

    /**
     * Create an instance of {@link Books }
     * 
     */
    public Books createBooks() {
        return new Books();
    }

    /**
     * Create an instance of {@link DeleteBook }
     * 
     */
    public DeleteBook createDeleteBook() {
        return new DeleteBook();
    }

    /**
     * Create an instance of {@link DeleteBookResponse }
     * 
     */
    public DeleteBookResponse createDeleteBookResponse() {
        return new DeleteBookResponse();
    }

    /**
     * Create an instance of {@link FetchArray }
     * 
     */
    public FetchArray createFetchArray() {
        return new FetchArray();
    }

    /**
     * Create an instance of {@link FetchArrayResponse }
     * 
     */
    public FetchArrayResponse createFetchArrayResponse() {
        return new FetchArrayResponse();
    }

    /**
     * Create an instance of {@link FetchBooks }
     * 
     */
    public FetchBooks createFetchBooks() {
        return new FetchBooks();
    }

    /**
     * Create an instance of {@link FetchBooksResponse }
     * 
     */
    public FetchBooksResponse createFetchBooksResponse() {
        return new FetchBooksResponse();
    }

    /**
     * Create an instance of {@link Throwable }
     * 
     */
    public Throwable createThrowable() {
        return new Throwable();
    }

    /**
     * Create an instance of {@link StackTraceElement }
     * 
     */
    public StackTraceElement createStackTraceElement() {
        return new StackTraceElement();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Exception }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "Exception")
    public JAXBElement<Exception> createException(Exception value) {
        return new JAXBElement<Exception>(_Exception_QNAME, Exception.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IOException }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "IOException")
    public JAXBElement<IOException> createIOException(IOException value) {
        return new JAXBElement<IOException>(_IOException_QNAME, IOException.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link JAXBException }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "JAXBException")
    public JAXBElement<JAXBException> createJAXBException(JAXBException value) {
        return new JAXBElement<JAXBException>(_JAXBException_QNAME, JAXBException.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddBooks }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "addBooks")
    public JAXBElement<AddBooks> createAddBooks(AddBooks value) {
        return new JAXBElement<AddBooks>(_AddBooks_QNAME, AddBooks.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddBooksResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "addBooksResponse")
    public JAXBElement<AddBooksResponse> createAddBooksResponse(AddBooksResponse value) {
        return new JAXBElement<AddBooksResponse>(_AddBooksResponse_QNAME, AddBooksResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Book }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "book")
    public JAXBElement<Book> createBook(Book value) {
        return new JAXBElement<Book>(_Book_QNAME, Book.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Books }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "books")
    public JAXBElement<Books> createBooks(Books value) {
        return new JAXBElement<Books>(_Books_QNAME, Books.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteBook }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "deleteBook")
    public JAXBElement<DeleteBook> createDeleteBook(DeleteBook value) {
        return new JAXBElement<DeleteBook>(_DeleteBook_QNAME, DeleteBook.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteBookResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "deleteBookResponse")
    public JAXBElement<DeleteBookResponse> createDeleteBookResponse(DeleteBookResponse value) {
        return new JAXBElement<DeleteBookResponse>(_DeleteBookResponse_QNAME, DeleteBookResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchArray }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "fetchArray")
    public JAXBElement<FetchArray> createFetchArray(FetchArray value) {
        return new JAXBElement<FetchArray>(_FetchArray_QNAME, FetchArray.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchArrayResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "fetchArrayResponse")
    public JAXBElement<FetchArrayResponse> createFetchArrayResponse(FetchArrayResponse value) {
        return new JAXBElement<FetchArrayResponse>(_FetchArrayResponse_QNAME, FetchArrayResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBooks }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "fetchBooks")
    public JAXBElement<FetchBooks> createFetchBooks(FetchBooks value) {
        return new JAXBElement<FetchBooks>(_FetchBooks_QNAME, FetchBooks.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchBooksResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "fetchBooksResponse")
    public JAXBElement<FetchBooksResponse> createFetchBooksResponse(FetchBooksResponse value) {
        return new JAXBElement<FetchBooksResponse>(_FetchBooksResponse_QNAME, FetchBooksResponse.class, null, value);
    }

}
