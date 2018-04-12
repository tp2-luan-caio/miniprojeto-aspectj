package br.unb.cic.epl.spl.eval;

public privileged aspect MulEval {
	public Integer br.unb.cic.epl.spl.mul.Mul.eval() {
		return lhs.eval() * rhs.eval();
	}

}
