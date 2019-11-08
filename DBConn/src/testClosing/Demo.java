/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testClosing;


public class Demo {
    public static void main(String[] args) {
        try(abc a= new abc(); xyz x=new xyz())
        {
            Class.forName("HI");
        }
        catch(Exception e)
        {
            System.out.println("Exception");
        }
        
    }
}
