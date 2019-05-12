func findmax(IntArray:[Int]) -> Int {
	var x:Int = IntArray[0]
	for a in 0...IntArray.count-1 {
		if a < IntArray.count-1 {
			if x < IntArray[a+1] {
			x = IntArray[a+1]
			}
	    }
	}
	return x
}

func findmin(IntArray:[Int]) -> Int {
	var x:Int = IntArray[0]
	for a in 0...IntArray.count-1 {
		if a < IntArray.count-1 {
			if x > IntArray[a+1] {
			x = IntArray[a+1]
			}
	    }
	}
	return x
}

func interact() -> Void {
    print("Enter the number of numbers in the starting array ")
    let num = Int(readLine()!)!
    if num < 1 {
        print("Invalid") }
    else {
        var IntArray = Array<Int>()
        for _ in 1...num {
            print("Enter an integer ")
            let a = Int(readLine()!)!
            IntArray.append(a)
        }
        print("This is your starting array ")
        print(IntArray)
        print("Here are the results ")
        print("Max: \(findmax(IntArray:IntArray))")
        print("Min: \(findmin(IntArray:IntArray))")
    }
}

interact()
