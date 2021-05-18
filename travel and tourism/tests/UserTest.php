<? php
use PHPUnit\Framework\TestCase;
class UserTest extends TestCase{
	public function testReturnsFullName(){
		require 'User.php';

		$User = new User;
		$User->firstname = "Bruno";
		$User->surname= "Fernandes";

		$this->assertEquals("Bruno Fernandes", $User->getFullName());
	}
}