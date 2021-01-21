package bean;

/**
 *
 * @author mhafizkn
 */
import java.io.Serializable;

public class Merit implements Serializable{
    
    private String name, role, matricNum, status;
    private int icNum, merit;

    public Merit() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getMatricNum() {
        return matricNum;
    }

    public void setMatricNum(String matricNum) {
        this.matricNum = matricNum;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getIcNum() {
        return icNum;
    }

    public void setIcNum(int icNum) {
        this.icNum = icNum;
    }

    public int getMerit() {
        return merit;
    }

    public void setMerit(int merit) {
        this.merit = merit;
    }
    
}
