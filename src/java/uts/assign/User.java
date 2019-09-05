
package uts.assign;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable {
    
    @XmlElement(name="email")
    private String email;
    @XmlElement(name="name")
    private String name;
    @XmlElement(name="password")
    private String password;
    @XmlElement(name="DOB")
    private String DOB;
 
    public User(String email, String name, String password, String DOB) {
       super();
        this.email = email;
        this.name = name;
        this.password = password;
        this.DOB = DOB;
    }
    
    public User() {
        super();
    }

    public String getEmail() {
        return email;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getDOB() {
        return DOB;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}