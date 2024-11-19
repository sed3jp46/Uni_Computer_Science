import java.util.Scanner;

public class Scooter {
    
    private static Scanner s = new Scanner(System.in);

	public static void main(String[] args) {
		
		int c; //choice
		int m; //meter
		double price = 5;
		String vendor = "Nby";

		System.out.println("Wie viele Meter sollen gefahren werden ?");
		m = s.nextInt();

		double price1 = 1+((m/500)*0.5);
		double price2 = ((m/500)*0.75);
		double price3 = 5;
		double price4 = 1+((m/100)*0.11);
		System.out.println("Welchen Anbieter willst du nutzen ?");
		System.out.println("1 = Anbieter 1: 1€ Unlockgebühr, 0.50€/500m");
		System.out.println("2 = Anbieter 2: 0€ Unlockgebühr, 0.75€/500m");
		System.out.println("3 = Anbieter 3: 5€ Unlockgebühr, 0.00€/500m");
		System.out.println("4 = Anbieter 4: 1€ Unlockgebühr, 0.11€/100m");
		System.out.println("5 = Komfortfunktion: sucht ihnen gleich den besten Anbieter");
		c = s.nextInt();
		switch(c){
			case 1:
				price = price1;
				vendor = "Anbieter 1";
				break;
			case 2:
				price = price2;
				vendor = "Anbieter 2";
				break;
			case 3:
				price = price3;
				vendor = "Anbieter 3";
				break;
			case 4:
				price = price4;
				vendor = "Anbieter 4";
				break;
			case 5:
				if (price1 <= price2  && price1 <= 5 && price <= price4) {
					price = price1;
					vendor = "Anbieter 1";
				}
				else if (price2 <= price1  && price2 <= 5 && price2 <= price2) {
					price = price2;
					vendor = "Anbieter 2";
				}
				else if (5 <= price1  && 5 <= price2 && 5 <= price4) {
					vendor = "Anbieter 3";
				}
				else {
					price = price4;
					vendor = "Anbieter 4";
				}
				break;
			default :
				System.err.print("Wählen sie eine Zahl zwischen 1-5 bitte");
				System.exit(0);
		}
        
        /////System.out.print( km + " Kilometer sollen gefahren werden.");
        System.out.print(" Der Scooter wurde entriegelt.");
        System.out.print(" Sie bezahlen " + (float)price + " €.");
        System.out.println(" Vielen Dank, dass Sie sich fuer Anbieter " + vendor + " entschieden haben!");
        
		s.close();
	}


}