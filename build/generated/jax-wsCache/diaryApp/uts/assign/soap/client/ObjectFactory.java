
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
    private final static QName _FetchUsers_QNAME = new QName("http://soap.assign.uts/", "fetchUsers");
    private final static QName _FetchUsersResponse_QNAME = new QName("http://soap.assign.uts/", "fetchUsersResponse");
    private final static QName _LoginUser_QNAME = new QName("http://soap.assign.uts/", "loginUser");
    private final static QName _LoginUserResponse_QNAME = new QName("http://soap.assign.uts/", "loginUserResponse");
    private final static QName _Users_QNAME = new QName("http://soap.assign.uts/", "users");

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
     * Create an instance of {@link FetchUsers }
     * 
     */
    public FetchUsers createFetchUsers() {
        return new FetchUsers();
    }

    /**
     * Create an instance of {@link FetchUsersResponse }
     * 
     */
    public FetchUsersResponse createFetchUsersResponse() {
        return new FetchUsersResponse();
    }

    /**
     * Create an instance of {@link LoginUser }
     * 
     */
    public LoginUser createLoginUser() {
        return new LoginUser();
    }

    /**
     * Create an instance of {@link LoginUserResponse }
     * 
     */
    public LoginUserResponse createLoginUserResponse() {
        return new LoginUserResponse();
    }

    /**
     * Create an instance of {@link Users }
     * 
     */
    public Users createUsers() {
        return new Users();
    }

    /**
     * Create an instance of {@link User }
     * 
     */
    public User createUser() {
        return new User();
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
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchUsers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "fetchUsers")
    public JAXBElement<FetchUsers> createFetchUsers(FetchUsers value) {
        return new JAXBElement<FetchUsers>(_FetchUsers_QNAME, FetchUsers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FetchUsersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "fetchUsersResponse")
    public JAXBElement<FetchUsersResponse> createFetchUsersResponse(FetchUsersResponse value) {
        return new JAXBElement<FetchUsersResponse>(_FetchUsersResponse_QNAME, FetchUsersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "loginUser")
    public JAXBElement<LoginUser> createLoginUser(LoginUser value) {
        return new JAXBElement<LoginUser>(_LoginUser_QNAME, LoginUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "loginUserResponse")
    public JAXBElement<LoginUserResponse> createLoginUserResponse(LoginUserResponse value) {
        return new JAXBElement<LoginUserResponse>(_LoginUserResponse_QNAME, LoginUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Users }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://soap.assign.uts/", name = "users")
    public JAXBElement<Users> createUsers(Users value) {
        return new JAXBElement<Users>(_Users_QNAME, Users.class, null, value);
    }

}
