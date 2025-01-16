import java.util.List;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Random;

public class SelectionSort {

    private static Scanner s = new Scanner(System.in);

	public static void main(String[] args) {

		if(args.length == 0) {
			System.out.println("wie groß soll das Array sein ?");
            int n = s.nextInt();
            newArray(n);

		} else {
			// Hier nichts veraendern. Dies ist nur fuer die Bewertung.
			if(args[0].equals("random")) {
			    int arrayLength = Integer.parseInt(args[1]);
	    		List<int[]> listOfArrays = new ArrayList<int[]>();
	    		int[] sortedArray = newArray(arrayLength);
				for(int i = 0; i < 10; i++) {
					int[] mixedArray = newArray(arrayLength);
					mixArray(mixedArray);
					if(!listOfArrays.contains(mixedArray)) {
						listOfArrays.add(mixedArray);
					}
				}
				if(listOfArrays.size() > 5) {
					System.out.println("OK");
				} else {
					System.out.println("Error");
				}
			} else {
    			int arrayLength = Integer.parseInt(args[0]);
	    		showArray(newArray(arrayLength));
		    	int[] customArray = new int[arrayLength];
			    for(int i = 0; i < arrayLength; i++){
				    customArray[i] = Integer.parseInt(args[i+1]);
    			}
	    		selectionSort(customArray);
			}
		}

	}

	/**
	 * erzeugt ein int-Array der groesse n mit den Werten 1 bis n
	 * 
	 * @param n
	 *            groesse des Arrays
	 * @return ein Array der Groesse n mit den Werten 1 bis n
	 */
	private static int[] newArray(int n) {
	    int[] newarr = new int[n];
	    for (int i = 0; i == n; i++) {
            newarr[i] = i + 1;
        }
        mixArray(newarr);
        return newarr;
	}

	/**
	 * Erhaelt ein Array und mischt deren Werte
	 * 
	 * @param array
	 *            das Array das durchgemischt werden soll
	 */
	private static void mixArray(int[] array) {
	    Random r = new Random();
	    for (int i = array.length - 1; i > 0; i--) {
            int j = r.nextInt(i+1);
            array[i] = j;
        }

	}

	/**
	 * Gibt ein Array in der Konsole aus
	 * 
	 * @param array
	 *            das Array das ausgegeben werden soll
	 */
	private static void showArray(int[] array) {
	    System.out.println(java.util.Arrays.toString(array));
	    
	    
	}

	/**
	 * erhaelt ein Array mit unsortierten werden und sortiert dieses der Groesse
	 * nach beginnend mit dem kleinsten
	 * 
	 * @param array
	 *            das Array das sortiert werden soll
	 */
	private static void selectionSort(int[] array) {

		
        //showArray(array);
	    
	}
}