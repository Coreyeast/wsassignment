/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.assign;
 
import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="reservations")
public class Reservations implements Serializable {
    
    @XmlElement(name = "reservation")
    private ArrayList<Reservation> list = new ArrayList<Reservation>();
    
    public Reservations() {
        //idk what this does
    }
    
    public ArrayList<Reservation> getList() {
        return list;
    }
        
    public void addReservation(Reservation reservation) {
        list.add(reservation);
    }
    public void removeReservation(Reservation reservation) {
        list.remove(reservation);
    }
   
}
