// 'Scanner'-Klasse muss erst fuer das Programm importiert werden
import java.util.Scanner;   

public class BasicIO { // Was diese Zeile bedeutet, lernen Sie spaeter
    public static void main (String args[]) { // dasselbe gilt fuer diese Zeile
        
        String name;    // Strings beinhalten Zeichenketten, hier den Namen
        int age;        // Integers beinhalten ganze numerische Werte 
        
        // Hier erstellen wir ein neues Object der Klasse 'Scanner'
        Scanner input = new Scanner(System.in);
        
        System.out.println ("Wie lautet dein Name?");
        name = input.next();    // Warte auf Eingabe, speicher dies in 'name'
        
        System.out.println ("Wie alt bist du ?");
        age = input.nextInt();
        // Fragt hier das Alter des Nutzers ab mit 'input.nextInt()'
        
        
        System.out.print("Hallo " + name + " du bist " + age + " Jahre alt."); // Fuege die Strings zusammen
        input.close();                           // Schliesse die Eingabe
    }
}