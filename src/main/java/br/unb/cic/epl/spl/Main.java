package br.unb.cic.epl.spl;

import br.unb.cic.epl.spl.add.*;
import br.unb.cic.epl.spl.sub.*;
import br.unb.cic.epl.spl.mul.*;
import java.util.ArrayList;
import java.util.List;

public class Main {
	private static Main instance; 
	
	private Main() {} 
	
	public static Main instance() {
		if(instance == null) {
			instance = new Main();
		}
		return instance; 
	}
	public List<Expression> expressions = new ArrayList<Expression>();; 
	
	public void createExpressions() {
		expressions.add(new Add(new Literal(10), new Literal(40)));
		expressions.add(new Sub(new Literal(10), new Literal(40)));
		expressions.add(new Mul(new Literal(10), new Literal(40)));
	}
	
	public static void main(String args[]) {
		instance().createExpressions();
		
		for(Expression e: instance().expressions) {
			System.out.println(e.eval());
		}
	}
}