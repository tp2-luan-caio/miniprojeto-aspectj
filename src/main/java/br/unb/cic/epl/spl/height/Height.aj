package br.unb.cic.epl.spl.height;

public privileged aspect Height {
	public abstract Integer br.unb.cic.epl.spl.Expression.height();
	
	public Integer br.unb.cic.epl.spl.Literal.height() {
		return 1;
	}
}