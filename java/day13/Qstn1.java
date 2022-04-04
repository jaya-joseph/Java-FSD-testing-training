package day13;
import java.util.*;
import java.util.Collections;
public class Qstn1 {

	public static void main(String[] args) {
		ArrayList<Double>list =new ArrayList<Double>();
		list.add(50.50);
		list.add(12.10);
		list.add(78.88);
		list.add(26.09);
		list.add(32.14);
		list.add(45.84);
		list.add(56.021);
		System.out.println("before sorting:");
		
	for(double newlist:list)
	{
		System.out.println(newlist);
	}
	Collections.sort(list,Collections.reverseOrder());
	System.out.println("AFTER SORTING:");
	for(double newlist:list)
	{
		System.out.println(newlist);
	}
	}

}
