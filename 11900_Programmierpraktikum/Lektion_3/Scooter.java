import java.util.Scanner;

public class Scooter {
    
    private static Scanner s = new Scanner(System.in);

	public static void main(String[] args) {
		
		
		int m;
		float km;
		System.out.println("Wie viele Meter sollen gefahren werden ?");
		m = s.nextInt();
		
		km = (float)m/1000;
        
        System.out.print( km + " Kilometer sollen gefahren werden.");
        System.out.print(" Der Scooter wurde entriegelt.");
        s.close();
        //System.out.print(" Sie bezahlen " + String.format("%.2f", price) + "€.");
        //System.out.println(" Vielen Dank, dass Sie sich fuer Anbieter " + vendor + " entschieden haben!");
        
	}


}