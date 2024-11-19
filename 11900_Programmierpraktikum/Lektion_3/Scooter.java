import java.util.Scanner;
java.util.LinkedList;

public class Scooter {
    
    private static Scanner s = new Scanner(System.in);

	public static void main(String[] args) {
		
		int c; //choice
		int m; //meter
		double price = 5;
		
		System.out.println("Wie viele Meter sollen gefahren werden ?");
		m = s.nextInt();

		System.out.println("Welchen Anbieter willst du nutzen ?");
		System.out.println("1 = Anbieter 1: 1€ Unlockgebühr, 0.50€/500m");
		System.out.println("2 = Anbieter 2: 0€ Unlockgebühr, 0.75€/500m");
		System.out.println("3 = Anbieter 3: 5€ Unlockgebühr, 0.00€/500m");
		System.out.println("4 = Anbieter 4: 1€ Unlockgebühr, 0.11€/100m");
		System.out.println("5 = Komfortfunktion: sucht ihnen gleich den besten Anbieter");
		c = s.nextInt();
		switch(c){
			case 1:
				price = 1+((m/500)*0.5);
				break;
			case 2:
				price = ((m/500)*0.75);
				break;
			case 3:
				price = 5;
				break;
			case 4:
				price = 1+((m/100)*0.11);
				break;
			case 5:
				price = 
			default :
				System.err.print("Wählen sie eine Zahl zwischen 1-5 bitte");
				System.exit(0);
		}
        
        /////System.out.print( km + " Kilometer sollen gefahren werden.");
        //System.out.print(" Der Scooter wurde entriegelt.");
        System.out.print(" Sie bezahlen " + (float)price + " €.");
        //System.out.println(" Vielen Dank, dass Sie sich fuer Anbieter " + vendor + " entschieden haben!");
        
		s.close();
	}


}