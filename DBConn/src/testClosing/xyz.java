/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testClosing;

public class xyz implements AutoCloseable {

    xyz()
    {
        System.out.println("creating xyz");
    }
    @Override
    public void close() throws Exception {
        System.out.println("closing xyz");
       
    }
    
}
