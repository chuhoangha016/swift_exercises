func a_pair(arr:[Int],K:Int,startI:Int) -> [Int] {
    let N = arr.count
    var b = 0
    var result = Array<Int>()
    for i in startI...N-2 {
        for j in i+1...N-1 {
            if arr[i]+arr[j] == K {
                result.append(arr[i])
                result.append(arr[j])
                b = 1
                break }
        }
        if b == 1 {
            break }
    }
    return result
}

func all_pairs(intArray:[Int],K:Int) -> Void {
    var All = Set<Array<Int>>()
    var x = 0
    for _ in 0...intArray.count-2 {
        let result = a_pair(arr:intArray,K:K,startI:x)
        All.insert(result)
        x+=1
    }
    All.remove([])
    print(All)
}

func interact () -> Void {
    print("Enter the number of numbers in the starting array ")
    let num = Int(readLine()!)!
    if num < 2 {
        print("Invalid") }
    else {
        print("Enter the sum of 2 numbers in a pair ")
        let K = Int(readLine()!)!
        var intArray = Array<Int>()
        for _ in 1...num {
            print("Enter an integer ")
            let a = Int(readLine()!)!
            intArray.append(a)
        }
        print("This is your starting array")
        print(intArray)
        print("Here are the pairs")
        all_pairs(intArray:intArray,K:K) }
}

interact()
