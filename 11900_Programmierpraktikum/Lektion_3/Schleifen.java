import java.util.HashMap;
import java.util.Scanner;

public class Schleifen {
    
    private static Scanner s = new Scanner(System.in);
    
    public static void main(String [] args) {
        while(true) {
            System.out.println("Bitte geben Sie ein Kommando ein:");
            String line = s.nextLine().toLowerCase();
            /*if(line.length()!=1) {
                System.out.println("Ungültige Länge.");
                continue;
            }*/
            String cmd = line;
            String extra = "";
            if(line.contains(" ")) {
                cmd = line.substring(0, line.indexOf(" "));
                extra = line.substring(line.indexOf(" ")+1);
            }else{
                cmd = line;
            }
            switch(cmd) {
                /*case 'p':
                    palindrome();
                    break;
                case 'v':
                    vowels();
                    break;*/
                case "palindrom":
                System.out.println("FULL COMMAND");
                case "pal":
                case "p":
                    if(extra.length()>0) {
                        palindrome(extra);
                    }else{
                        palindrome();
                    }
                    break;
                case "vowels":
                System.out.println("FULL COMMAND");
                case "vow":
                case "v":
                    if(extra.length()>0) {
                        vowels(extra);
                    }else{
                        vowels();
                    }
                    break;
                case "exit":
                //System.exit(0);
                    return;
                default:
                System.out.println("Ungültiger Befehl.");
                    break;
            }
        }
    }
    public static boolean palindrome() {
        System.out.println("====[PALINDROM]====");
        System.out.println("Bitte geben Sie ein Wort ein");
        return palindrome(s.nextLine().toLowerCase());
    }
    public static boolean palindrome(String a) {
        int b = a.length();

        boolean check_failed = false;
        for (int i = 0; i < b/2 ; i++) {
            if (a.charAt(i) != a.charAt(b-i-1)) {
                check_failed = true;
                break;
            }
        }
        if(check_failed) {
            System.out.println("Es ist kein Palindrom");
        }else{
            System.out.println("Es ist ein Palindrom");
        }
        return !check_failed;
    }
    private static char[] vowels = new char[] {'a', 'e', 'i', 'o', 'u'};
    private static char[] consonants = new char[] {'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'};
    public static void vowels() {
        System.out.println("====[Vowels]====");
        System.out.println("Bitte geben Sie ein Wort ein");
        vowels(s.nextLine().toLowerCase());
    }
    public static void vowels(String input) {
        int vNum = 0;
        int cNum = 0;
        int rNum = 0;

        HashMap<Character, Integer> counter = new HashMap<Character, Integer>();
        
        for(char c : input.toCharArray()) {
            if(!counter.containsKey(c))
                counter.put(c, 0);
            counter.put(c, counter.get(c)+1);
            
            if(containsChar(vowels, c)) {
                vNum++;
            }else if(containsChar(consonants, c)) {
                cNum++;
            }else{
                rNum++;
            }
        }
        System.out.println("Vokale: " + vNum + ", Konsonanten: " + cNum + ", uebrige Zeichen: " + rNum);
        System.out.println("Häufigkeit der Zeichen:");
        System.out.println(hashToString(counter));
    }
    
    public static void rhombus() {
        
        
        
    }
    
    public static void binary() {
        
        
        
    }
    private static boolean containsChar(char[] array, char check) {
        for(char c : array) {
            if(c==check)
                return true;
        }
        return false;
    }
    private static String hashToString(HashMap<Character, Integer> input) {
        String ret = "";
        for(char key : input.keySet()) {
            ret+="\n"+key+": "+"\t"+input.get(key);
        }
        if(ret.length()>0)
            return ret.substring(1);
        return ret;
    }
}