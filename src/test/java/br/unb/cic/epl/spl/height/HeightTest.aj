package br.unb.cic.epl.spl.height;

public aspect HeightTest {
	public void br.unb.cic.epl.spl.LiteralTest.testHeight() {
		br.unb.cic.epl.spl.Literal lit = new br.unb.cic.epl.spl.Literal(1000);
		assertEquals(lit.height(), new Integer(1));
	}
	
	public void br.unb.cic.epl.spl.LiteralTest.testAddHeight() {
		br.unb.cic.epl.spl.add.Add add = new br.unb.cic.epl.spl.add.Add(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.Literal(1000));
		assertEquals(add.height(), new Integer(2));
	}
	
	public void br.unb.cic.epl.spl.LiteralTest.testSubHeight() {
		br.unb.cic.epl.spl.sub.Sub sub = new br.unb.cic.epl.spl.sub.Sub(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.sub.Sub(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.Literal(1000)));
		assertEquals(sub.height(), new Integer(3));
	}
	
	public void br.unb.cic.epl.spl.LiteralTest.testMulHeight() {
		br.unb.cic.epl.spl.mul.Mul mul = new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.Literal(1000), new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.mul.Mul(new br.unb.cic.epl.spl.Literal(1000),new br.unb.cic.epl.spl.Literal(1000)), new br.unb.cic.epl.spl.Literal(1000)),new br.unb.cic.epl.spl.Literal(1000))));
		assertEquals(mul.height(), new Integer(6));
	}
}