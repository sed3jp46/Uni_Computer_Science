import java.util.Scanner;
import java.util.Arrays;

public class Seriennummer {

    public static void main(String [] args) {
        
        Scanner s = new Scanner (System.in);
        
        System.out.println("Gebe die Seriennummer ein");
        String sernum = s.nextLine().toUpperCase();

        if (!sernum.matches("[A-Z]{2}[0-9]{10}")) { //form wird überprüft
            System.out.println("WRONG SERIALNUMBER DETECTED");
            return;
        }

        String buchs = sernum.substring(0,2);
        String zahls = sernum.substring(2);

        int buchsum = 0;
        int zahlsum = 0;

        for (char buch : buchs.toCharArray()) {
            buchsum += buch - 'A' + 1;
        }

        for (char zahl : zahls.toCharArray()) {
            zahlsum += Character.getNumericValue(zahl);
        }

        int summe = zahlsum + buchsum;
        
        if(summe % 9 == 7) { 
            System.out.println("Seriennummer gueltig");
        } else {
            System.out.println("Seriennummer ungueltig");
        }
        
        
        s.close();
    }
}