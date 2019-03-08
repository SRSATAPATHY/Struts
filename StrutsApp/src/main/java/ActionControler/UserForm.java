package ActionControler;
 
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
 
public class UserForm extends ActionForm {
 
    private String message;
   public UserForm(){
    	message="welcom";
    }
 
    public String getMessage() {
        return message;
    }
 
    public void setMessage(String message) {
        this.message = message;
    }
 
}