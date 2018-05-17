
package uts.assign;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement
public class Book implements Serializable {
    
    @XmlElement(name="title")
    private String title;
    @XmlElement(name="author")
    private String author;
    @XmlElement(name="abstract")
    private String absstract;
    @XmlElement(name="pubInfo")
    private String pubInfo;
    @XmlElement(name="condition")
    private String condition;
    @XmlElement(name="lister")
    private String lister;

    public Book(String title, String author, String absstract, String pubInfo, String condition, String lister ) {
        super();
        this.title = title;
        this.author = author;
        this.absstract = absstract;
        this.pubInfo = pubInfo;
        this.condition = condition;
        this.lister = lister;
    }

    public String getLister() {
        return lister;
    }

    public void setLister(String lister) {
        this.lister = lister;
    }

    public String getTitle() {
        return title;
    }
    public String getAuthor() {
        return author;
    }
    public String getAbsstract() {
        return absstract;
    }

    public String getPubInfo() {
        return pubInfo;
    }

    public String getCondition() {
        return condition;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }

    public void setAbsstract(String absstract) {
        this.absstract = absstract;
    }

    public void setPubInfo(String pubInfo) {
        this.pubInfo = pubInfo;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }
  
    public Book() {
        super();
    }

   
    
}