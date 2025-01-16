import java.util.Scanner;
import java.util.Arrays;

class Sieb
{
    private static Scanner s = new Scanner(System.in);
    public static void main(String[] args)
    {
        System.out.println("Geben sie eine Natürliche Zahl an");
        int n = s.nextInt();
        boolean[] isPrimArray = new boolean[n+1];
        
        if (n <= 2) {
            System.out.println("ERROR");
            return;
        } else {
             
        }



        for (int i = 0; i <= n; i++) {
            if (isPrimArray[i]) {
               System.out.print(i + ", ");
            }
        }
    }
}