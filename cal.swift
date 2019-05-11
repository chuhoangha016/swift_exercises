func cal(_ a:Double,_ b: Double,_ symbol: String) -> ()->Void{
	func add() {
		print(a+b)
	}
	func substract() {
		print(a-b)
	}
	func multiply() {
		print(a*b)
	}
	func divide() {
		print(a/b)
	}
	func Default() {
		print("aaaaa")
	}
	switch symbol {
		case "+":
		return add
		case "-":
		return substract
		case "*":
		return multiply
		case "/":
		return divide
		default:
		return Default
	}
}

cal(3,2,"/")()
