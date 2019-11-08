package Employee;

import java.beans.IntrospectionException;
import java.beans.MethodDescriptor;
import java.beans.PropertyDescriptor;
import java.beans.SimpleBeanInfo;
import java.util.logging.Level;
import java.util.logging.Logger;


public class EmployeeBeanInfo extends SimpleBeanInfo{
    @Override
    public PropertyDescriptor[] getPropertyDescriptors() 
    {
        try {
            PropertyDescriptor id=new PropertyDescriptor("id",Employee.class);
            PropertyDescriptor salary=new PropertyDescriptor("salary",Employee.class);
            PropertyDescriptor age=new PropertyDescriptor("age",Employee.class);
            PropertyDescriptor[] pd={id,salary,age};
            return pd;
        } catch (IntrospectionException ex) {
            Logger.getLogger(EmployeeBeanInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public MethodDescriptor[] getMethodDescriptors() {
        try{
            MethodDescriptor sm=new MethodDescriptor(Employee.class.getMethod("sum",int.class,int.class));
            MethodDescriptor disp=new MethodDescriptor(Employee.class.getMethod("display"));
         MethodDescriptor md[]={sm, disp};
         return md;
        } catch (NoSuchMethodException | SecurityException ex) {
            Logger.getLogger(EmployeeBeanInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
