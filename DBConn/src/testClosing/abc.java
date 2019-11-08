
package testClosing;


public class abc implements AutoCloseable {

    abc()
    {
        System.out.println("creating abc");
    }
    @Override
    public void close() throws Exception{
        System.out.println("closing abc");
        
    }
    
}
