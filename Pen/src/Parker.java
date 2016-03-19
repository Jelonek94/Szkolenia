
public class Parker extends Pen {
int price;

	public Parker(int price){
		this.price=price;
	    System.out.println("My price is "+ price+"$$ you poor man!!!");
	}
	
@Override
public void working() {
	System.out.println("I am Parker and I am writing!!");
}
}