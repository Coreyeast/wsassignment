
package uts.assign.soap.client;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.FaultAction;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "DiarySOAP", targetNamespace = "http://soap.assign.uts/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface DiarySOAP {


    /**
     * 
     * @param arg1
     * @param arg0
     * @return
     *     returns uts.assign.soap.client.User
     * @throws IOException_Exception
     * @throws JAXBException_Exception
     * @throws Exception_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginUser", targetNamespace = "http://soap.assign.uts/", className = "uts.assign.soap.client.LoginUser")
    @ResponseWrapper(localName = "loginUserResponse", targetNamespace = "http://soap.assign.uts/", className = "uts.assign.soap.client.LoginUserResponse")
    @Action(input = "http://soap.assign.uts/DiarySOAP/loginUserRequest", output = "http://soap.assign.uts/DiarySOAP/loginUserResponse", fault = {
        @FaultAction(className = JAXBException_Exception.class, value = "http://soap.assign.uts/DiarySOAP/loginUser/Fault/JAXBException"),
        @FaultAction(className = IOException_Exception.class, value = "http://soap.assign.uts/DiarySOAP/loginUser/Fault/IOException"),
        @FaultAction(className = Exception_Exception.class, value = "http://soap.assign.uts/DiarySOAP/loginUser/Fault/Exception")
    })
    public User loginUser(
        @WebParam(name = "arg0", targetNamespace = "")
        String arg0,
        @WebParam(name = "arg1", targetNamespace = "")
        String arg1)
        throws Exception_Exception, IOException_Exception, JAXBException_Exception
    ;

    /**
     * 
     * @return
     *     returns uts.assign.soap.client.Users
     * @throws IOException_Exception
     * @throws JAXBException_Exception
     * @throws Exception_Exception
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "fetchUsers", targetNamespace = "http://soap.assign.uts/", className = "uts.assign.soap.client.FetchUsers")
    @ResponseWrapper(localName = "fetchUsersResponse", targetNamespace = "http://soap.assign.uts/", className = "uts.assign.soap.client.FetchUsersResponse")
    @Action(input = "http://soap.assign.uts/DiarySOAP/fetchUsersRequest", output = "http://soap.assign.uts/DiarySOAP/fetchUsersResponse", fault = {
        @FaultAction(className = JAXBException_Exception.class, value = "http://soap.assign.uts/DiarySOAP/fetchUsers/Fault/JAXBException"),
        @FaultAction(className = IOException_Exception.class, value = "http://soap.assign.uts/DiarySOAP/fetchUsers/Fault/IOException"),
        @FaultAction(className = Exception_Exception.class, value = "http://soap.assign.uts/DiarySOAP/fetchUsers/Fault/Exception")
    })
    public Users fetchUsers()
        throws Exception_Exception, IOException_Exception, JAXBException_Exception
    ;

}
