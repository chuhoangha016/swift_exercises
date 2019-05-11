let IntArray = [10,3,4,-2,9,-4,12,6]
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

func findmaxmin(IntArray:[Int]) {
	print("Max: \(findmax(IntArray:IntArray))")
	print("Min: \(findmin(IntArray:IntArray))")
}

findmaxmin(IntArray:IntArray)