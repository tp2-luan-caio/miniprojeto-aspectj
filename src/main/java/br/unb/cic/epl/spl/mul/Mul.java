package br.unb.cic.epl.spl.mul;

import br.unb.cic.epl.spl.Expression;

public class Mul implements Expression {
	private Expression lhs; 
	private Expression rhs; 
	
	public Mul(Expression lhs, Expression rhs) {
		this.lhs = lhs; 
		this.rhs = rhs;
	}

	public String print() {
		return "(" + lhs.print() + " * " + rhs.print() + ")";
	}
}
