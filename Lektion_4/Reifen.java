public class Reifen {
    private int herstellungsjahr;
    private double reifendruck;
    private double profiltiefe;

    public Reifen(int herstellungsjahr, double reifendruck, double profiltiefe) {
	    this.herstellungsjahr = herstellungsjahr;
        
	}

    public void setherstellungsjahr(int herstellungsjahr) {
        this.herstellungsjahr = herstellungsjahr;
    }
    public int getherstelleungsjahr() {
        return this.herstellungsjahr;
    }

    public void setreifendruck(double reifendruck) {
        this.reifendruck = reifendruck;
    }

    public double getreifendruck() {
        return this.reifendruck;
    }

    public double getprofiltiefe() {
        return this.profiltiefe;
    }
    }