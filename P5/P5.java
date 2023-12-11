import syntaxtree.*;
import visitor.*;

public class P5 {
   public static void main(String [] args) {
      try {
         Node root = new MiniRAParser(System.in).Goal();
         root.accept(new mipsgen());
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
}