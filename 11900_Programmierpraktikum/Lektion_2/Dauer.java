import java.util.Scanner;

public class Dauer {
    public static void main(String [] args) {
        Scanner s = new Scanner(System.in);

        double p; //zinssatz
        int k; //kapital
        double z;//zinsen

        System.out.println("Bitte geben sie ihr Kapital als ganze Zahl an");
        k = s.nextInt();
        
        System.out.println("Bitte geben sie ihren Zinsatz an");
        p = s.nextDouble();

        System.out.println("Bitte geben sie ihr Endkapital in ganzen Zahlen an");
        z = s.nextDouble();

        double result = (float)((Math.log(z/k))/(Math.log(1+p)));
        System.out.printf("%.2f" , result);
        
    }
}