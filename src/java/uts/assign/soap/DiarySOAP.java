/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign.soap;

import java.io.IOException;
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
import uts.assign.DiaryApplication;
import uts.assign.User;
import uts.assign.Users;

/**
 *
 * @author Corey's-PC
 */
@WebService(serviceName = "diaryApp")
public class DiarySOAP {

    @Resource
    private WebServiceContext context;

    @WebMethod
    public User loginUser(String email, String password) throws JAXBException, IOException, Exception {
        return fetchUsers().login(email, password);
    }

    @WebMethod
    public Users fetchUsers() throws JAXBException, IOException, Exception {
        return getDiaryApp().getUsers();
    }

    private DiaryApplication getDiaryApp() throws JAXBException, IOException, Exception {
        ServletContext application = (ServletContext) context.getMessageContext().get(MessageContext.SERVLET_CONTEXT);

        synchronized (application) {
            DiaryApplication diaryApp = (DiaryApplication) application.getAttribute("diaryApp");
            if (diaryApp == null) {
                diaryApp = new DiaryApplication();
                diaryApp.setFilePath(application.getRealPath("WEB-INF/users.xml"));
                application.setAttribute("diaryApp", diaryApp);
            }
            return diaryApp;
        }

    }


}