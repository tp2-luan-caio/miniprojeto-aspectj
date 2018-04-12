package br.unb.cic.epl.spl.eval;

public aspect MulEvalTest {
	public void br.unb.cic.epl.spl.LiteralTest.testMulEval() {
		br.unb.cic.epl.spl.mul.Mul lit = new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.Literal(1000),new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(2000000), lit.eval());
	}
	
	public void br.unb.cic.epl.spl.LiteralTest.testExpmulEval() {
		br.unb.cic.epl.spl.mul.Mul lit = new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.Literal(3),new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.Literal(2000)));
		assertEquals(new Integer(6000000), lit.eval());
	}
}