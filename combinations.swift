func a_set(intArray:[Int],k:Int) -> Set<Int> {
    let N = intArray.count
    var result=Set<Int>()
    while result.count<k {
        let index = Int.random(in: 0..<N)
        result.insert(intArray[index])}
    return result
}

func cal(intArray:[Int],k:Int) -> Int {
    let n = intArray.count
    var numerator = 1
    var k_factorial = 1
    var n_k_factorial = 1
    for a in 1...n {
        numerator = numerator * a
    }
    for b in 1...k {
        k_factorial = k_factorial * b
    }
    for c in 1...(n-k) {
        n_k_factorial = n_k_factorial * c
    }
    let total = numerator/(k_factorial * n_k_factorial)
    return total
}

func all_sets(intArray:[Int],k:Int) -> Void {
    let total = cal(intArray:intArray,k:k)
    var result = Set<Set<Int>>()
    while result.count<total {
        result.insert(a_set(intArray:intArray,k:k))
    }
    print(result)
}

func interact () -> Void {
    print("Enter the number of numbers in a combination ")
    let k = Int(readLine()!)!
    print("Enter the number of numbers in the starting array ")
    let num = Int(readLine()!)!
    if k > num {
        print("Invalid") }
    else {
        var intArray = Array<Int>()
        for _ in 1...num {
            print("Enter an integer ")
            let a = Int(readLine()!)!
            intArray.append(a)
        }
        print("This is your starting array")
        print(intArray)
        print("Here are the combinations")
        if k == num {
            print(intArray) }
        else {
            all_sets(intArray:intArray,k:k) }
    }
}

interact()
