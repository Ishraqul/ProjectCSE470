<? php
class CalculatorTest extends PHPUnit\Framework\TestCase{
	public function testAdd(){
		$calculator = new app\Calculator;
		$result= $calculator->add(20,5);

		$this->assertEquals(25, $result);
	}
	public function testSubtract(){
		$calculator = new app\Calculator;
		$result= $calculator->subtract(20,5);

		$this->assertEquals(15, $result);
	}
}