import java.util.Scanner;
public class Potenz {
    static void main (String args[]) {

        double a;
        double b;

        Scanner input = new Scanner (System.in);
        
        System.out.println("Gib den Wert von a an");
        a = input.nextDouble();

        System.out.println("Gib den Wert von b an");
        b = input.nextDouble();

        double intNum;
        double doubleNum;

        intNum = Math.pow((int)a,(int)b);
        doubleNum = Math.pow(a, b);

        System.out.println("Ganzzahl = " + intNum + ", Gleitkomma = " + doubleNum);

        input.close();

    }
}
