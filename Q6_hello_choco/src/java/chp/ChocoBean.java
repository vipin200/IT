package chp;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.Serializable;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author c3
 */
public class ChocoBean extends SimpleTagSupport implements Serializable {

    private String texture;

    public ChocoBean() {}
    @Override
     public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            
            if (texture.equals("chewy"))
            {
                out.println("Five star , Bar One ");
            }
            else if (texture.equals("crunchy"))
            {
                out.println("Munch and Kitkat");
            }
            else 
            {
                out.println("-------");
            }
            
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            
        } catch (java.io.IOException ex) {
            throw new JspException("Error in ChocoBean tag", ex);
        }
    }

    public void setTexture(String texture) {
        this.texture = texture;
    }
    
}
