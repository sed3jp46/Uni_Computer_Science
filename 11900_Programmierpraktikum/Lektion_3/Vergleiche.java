import java.util.Scanner;

import javax.swing.SpinnerNumberModel;

public class Vergleiche {
    
    private static Scanner s = new Scanner(System.in);
    
    public static void main(String [] args) {
        int n;
        System.out.println("Welche Funktion wollen sie nutzen ? 1 = compare Names oder 2 = compare numbers.");
        n = s.nextInt();
        switch(n){
        case 1:
            compareNames();
            break;
        case 2:
            compareNumbers();
            break;
        default:
            System.out.println("Bitte wählen sie 1 oder 2. :(");
            break;    
        }
        
        
    }
    
    public static void compareNames() {
       String name1;
       String name2;
       
       System.out.println("Gebe ersten Namen an");
       name1 = s.next();

       System.out.println("Gebe zweiten Namen an");
       name2 = s.next();

       int name1_lgth = name1.length();
       int name2_lgth = name2.length();

       if (name1_lgth > name2_lgth) {
        System.out.println(name1 + " ist länger als " + name2);
       } else if (name2_lgth > name1_lgth) {
        System.out.println(name2 + " ist länger als " + name1);
       } else {
        System.out.println(name1 + " ist genauso lang wie "+ name2);
       }
        
    }
    
    public static void compareNumbers() {
        int zahl1;
        int zahl2;
        int zahl3;

        System.out.println("Gebe die erste Zahl an");
        zahl1 = s.nextInt();

        System.out.println("Gebe die zweite Zahl an");
        zahl2 = s.nextInt();

        System.out.println("Gebe die dritte Zahl an");
        zahl3 = s.nextInt();

        int Summe = zahl1+zahl2+zahl3 ;
        int durchschnitt = Summe/3;

        System.out.println("Die Summe der 3 Zahlen ist: "+ Summe + " und der Durchschnitt beträgt: "+ durchschnitt);
        
        
        
    }
}