/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign;
import java.io.*;

import javax.xml.bind.*;

public class DiaryApplication {
    private String filePath;
    private Users users;
    
    public DiaryApplication () {
        
    }
    public DiaryApplication(String filePath, Users users) {
        this.filePath = filePath;
        this.users = users;
    }
    
    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath)  throws Exception{
        
      //create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller u = jc.createUnmarshaller();
        
        this.filePath = filePath;
        
        //unmarshall object from file
        FileInputStream fin = new FileInputStream(filePath);
        users = (Users)u.unmarshal(fin);
        fin.close();
    }
    
    
     public void updateXML(Users users, String filePath) throws Exception {
        this.users = users;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(users, fout);
        fout.close();
    }
     
     public void saveUsers() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(users, fout);
        fout.close();
    }
       public Users getUsers() {
        return users;
    }
       
       public void setUsers(Users users) {
        this.users = users;
    }
}

