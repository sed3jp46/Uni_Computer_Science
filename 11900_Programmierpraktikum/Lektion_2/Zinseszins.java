import java.util.Scanner;

public class Zinseszins {
    public static void main(String [] args) {
        Scanner s = new Scanner(System.in);

        double p; //zinssatz
        int k; //kapital
        int n;//jahre

        System.out.println("Bitte geben sie ihr Kapital als ganze Zahl an");
        k = s.nextInt();
        
        System.out.println("Bitte geben sie ihren Zinsatz an");
        p = s.nextDouble();

        System.out.println("Wie lange ist die Laufzeit in Jahren ?");
        n = s.nextInt();

        double result = k * Math.pow(1+p, n);
     
        System.out.printf("%.2f", result);

        s.close();
        
    }
}