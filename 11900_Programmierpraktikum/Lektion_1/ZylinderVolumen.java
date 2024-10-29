import java.util.Scanner;
public class ZylinderVolumen {
    public static void main(String [] args) {

        Scanner input = new Scanner (System.in);
        
        float r;
        float h;

        System.out.println("Bitte geben sie den Radius an.");
        r = input.nextFloat();

        System.out.println("Bitte geben sie die Höhe an.");
        h = input.nextFloat();

        double area;
        double volume;

        area = (2 * Math.pow(r, 2) * Math.PI) + (2 * r * Math.PI * h);
        volume = Math.pow(r, 2) * Math.PI * h;
        
        System.out.println("Oberflaeche = " + area + ", Volumen = " + volume);

        input.close();
        
    }
}