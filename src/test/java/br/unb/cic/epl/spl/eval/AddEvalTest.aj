package br.unb.cic.epl.spl.eval;

public aspect AddEvalTest {
	public void br.unb.cic.epl.spl.LiteralTest.testAddEval() {
		br.unb.cic.epl.spl.add.Add lit = new br.unb.cic.epl.spl.add.Add(new br.unb.cic.epl.spl.Literal(1000),new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(3000), lit.eval());
	}
	
	public void br.unb.cic.epl.spl.LiteralTest.testExpAddEval() {
		br.unb.cic.epl.spl.add.Add lit = new br.unb.cic.epl.spl.add.Add(new br.unb.cic.epl.spl.Literal(1000),new br.unb.cic.epl.spl.add.Add(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.Literal(2000)));
		assertEquals(new Integer(4000), lit.eval());
	}
}