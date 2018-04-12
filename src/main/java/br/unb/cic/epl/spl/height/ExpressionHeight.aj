package br.unb.cic.epl.spl.height;

public privileged aspect ExpressionHeight {
	public Integer br.unb.cic.epl.spl.add.Add.height() {
		if(lhs.height() > rhs.height()) return lhs.height() + 1;
		else return rhs.height() + 1;
	}
	
	public Integer br.unb.cic.epl.spl.sub.Sub.height() {
		if(lhs.height() > rhs.height()) return lhs.height() + 1;
		else return rhs.height() + 1;
	}
	
	public Integer br.unb.cic.epl.spl.mul.Mul.height() {
		if(lhs.height() > rhs.height()) return lhs.height() + 1;
		else return rhs.height() + 1;
	}

}