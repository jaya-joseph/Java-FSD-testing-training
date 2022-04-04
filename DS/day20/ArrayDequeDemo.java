package day20;

import java.util.ArrayDeque;
import java.util.Deque;

public class ArrayDequeDemo {

	public static void main(String[] args) 
	{
		Deque<String> dq= new ArrayDeque<String>();
    // add() method to insert
		dq.add("to");
		dq.addFirst("WELCOME");
		dq.addLast("java");
		System.out.println(dq);
		System.out.println(dq.element());
		System.out.println(dq.poll());
		dq.push("amazing");
		System.out.println(dq);
		dq.remove();
		System.out.println(dq);
	}

}
