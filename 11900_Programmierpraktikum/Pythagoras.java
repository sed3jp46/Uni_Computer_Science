import java.util.Scanner;
public class Pythagoras {
    public static void main(String [] args) {
    
    int a;
    int b;
    float c;
    double result;
    
    Scanner input = new Scanner(System.in);
    
    System.out.println("Wie lang ist a ?");
    a = input.nextFloat();
    
    System.out.println("wie lang ist b ?");
    b = input.nextFloat();
    
    c = a*a + b*b;
    result = (double) Math.sqrt(c);
    System.out.println(result);
    
    input.close();
        
    }
}
