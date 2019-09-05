
package uts.assign;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
public class Reservation implements Serializable {
    
    @XmlElement(name="email")
    private String email;
    @XmlElement(name="name")
    private String name;
    @XmlElement(name="title")
    private String title;
    @XmlElement(name="id")
    private int id;
 
    public Reservation(String email, String name, String title, int id ) {
       super();
        this.email = email;
        this.name = name;
        this.title = title;
        this.id = id;
    }
    
    public Reservation() {
        super();
    }

    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public int getId() {
        return id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setId(int id) {
        this.id = id;
    }

   
    
}