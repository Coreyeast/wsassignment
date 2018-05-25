package uts.assign;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.*;
import java.util.ArrayList;

import javax.xml.bind.*;

public class ReserveApplication {
    private String filePath;
    private Reservations reservations;
    
    public ReserveApplication () {
        
    }
    public ReserveApplication(String filePath, Reservations reservations) {
        this.filePath = filePath;
        this.reservations = reservations;
    }
    
    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath)  throws Exception{
        
      //create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Reservations.class);
        Unmarshaller u = jc.createUnmarshaller();
        
        this.filePath = filePath;
        
        //unmarshall object from file
        FileInputStream fin = new FileInputStream(filePath);
        reservations = (Reservations)u.unmarshal(fin);
        fin.close();
    }
    
    
     public void updateXML(Reservations reservations, String filePath) throws Exception {
        this.reservations = reservations;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Reservations.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(reservations, fout);
        fout.close();
    }
     
     public void saveReservations() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Reservations.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(reservations, fout);
        fout.close();
    }
       public Reservations getReservations() {
        return reservations;
    }
       
       public void setReservations(Reservations reservations) {
        this.reservations = reservations;
    }
}

