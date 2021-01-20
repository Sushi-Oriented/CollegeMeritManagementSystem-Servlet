
package bean;

import java.io.Serializable;
import java.util.Date;

public class Program implements Serializable {

    int progID;
    String progName, progLocation, progOrganizer, progCategory, progDescription, progStatus, firstEmail;
    Date progStartDate, progEndDate;
    
    public Program() {
    }
    
    public int getFirstEmail() {
        return progID;
    }

    public void setFirstEmail(String firstEmail) {
        this.firstEmail = firstEmail;
    }
    
    public int getProgID() {
        return progID;
    }

    public void setProgID(int progID) {
        this.progID = progID;
    }

    public String getProgName() {
        return progName;
    }

    public void setProgName(String progName) {
        this.progName = progName;
    }

    public String getProgLocation() {
        return progLocation;
    }

    public void setProgLocation(String progLocation) {
        this.progLocation = progLocation;
    }

    public String getProgOrganizer() {
        return progOrganizer;
    }

    public void setProgOrganizer(String progOrganizer) {
        this.progOrganizer = progOrganizer;
    }

    public String getProgCategory() {
        return progCategory;
    }

    public void setProgCategory(String progCategory) {
        this.progCategory = progCategory;
    }

    public String getProgDescription() {
        return progDescription;
    }

    public void setProgDescription(String progDescription) {
        this.progDescription = progDescription;
    }

    public String getProgStatus() {
        return progStatus;
    }

    public void setProgStatus(String progStatus) {
        this.progStatus = progStatus;
    }

    public Date getProgStartDate() {
        return progStartDate;
    }

    public void setProgStartDate(Date progStartDate) {
        this.progStartDate = progStartDate;
    }

    public Date getProgEndDate() {
        return progEndDate;
    }

    public void setProgEndDate(Date progEndDate) {
        this.progEndDate = progEndDate;
    }
}
