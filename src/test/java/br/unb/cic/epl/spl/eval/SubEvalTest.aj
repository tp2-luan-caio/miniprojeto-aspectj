package br.unb.cic.epl.spl.eval;

public aspect SubEvalTest {
	public void br.unb.cic.epl.spl.LiteralTest.testSubEval() {
		br.unb.cic.epl.spl.sub.Sub lit = new br.unb.cic.epl.spl.sub.Sub(new br.unb.cic.epl.spl.Literal(2000),new br.unb.cic.epl.spl.Literal(1500));
		assertEquals(new Integer(500), lit.eval());
	}
	
	public void br.unb.cic.epl.spl.LiteralTest.testExpsubEval() {
		br.unb.cic.epl.spl.sub.Sub lit = new br.unb.cic.epl.spl.sub.Sub(new br.unb.cic.epl.spl.Literal(3000),new br.unb.cic.epl.spl.sub.Sub(new br.unb.cic.epl.spl.Literal(2000), new br.unb.cic.epl.spl.Literal(1000)));
		assertEquals(new Integer(2000), lit.eval());
	}
}