import java.util.Scanner;

public class Zinssatz {
    
    public static void main(String [] args) {
    
        Scanner s = new Scanner (System.in);
        double n; //Jahre
        double k; //kapital
        double z; //zinsen

        System.out.println("Bitte geben sie ihr Kapital als ganze Zahl an");
        k = s.nextDouble();
        
        System.out.println("Bitte geben sie ihre Laufzeit an an");
        n = s.nextDouble();

        System.out.println("Bitte geben sie ihre Zinsen in ganzen Zahlen an");
        z = s.nextDouble();
    
        double a = (z/k)+1;
        double b = (Math.log(a));
        double c = b/n;
        double result = (Math.exp(c)-1)*100;
        
        System.out.println(String.format("%.2f", result) + " %");

        s.close();
    }
}
