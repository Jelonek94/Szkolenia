
public class Pen implements Tool {
protected String material;
protected String color;
public Pen(){
	System.out.println("I am a pen");
}
public Pen(String material, String color){
	this.material=material;
	this.color=color;
	System.out.println("My color is " + color);
	System.out.println("I am made of " + material);
}
@Override
public void working() {
	System.out.println("I am writing");
}

public static void main(String args[]){
	Pen pen=new Pen("Graphene", "black");
	Parker parker = new Parker(3000);
	Tool Pen=new Pen();
	
	Pen.working();
	parker.working();
	}
}
