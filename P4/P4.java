import syntaxtree.*;
import visitor.*;

public class P4 {
   public static void main(String [] args) {
      try {
         Node root = new microIRParser(System.in).Goal();
         //System.out.println("Program parsed successfully");
         root.accept(new miniRA());
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 


