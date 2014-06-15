import java.io.*;
import java.util.*;

public class Driver {
    public static void main (String args[]){
        URLtoFile writer = new URLtoFile();
        writer.writeFile("http://en.wikipedia.org/wiki/Idina_Menzel", "IdinaMenzel");
        HTMLTagParser parser = new HTMLTagParser();
        parser.stripTags("IdinaMenzel.txt", "Idina_noTags");
       
}
