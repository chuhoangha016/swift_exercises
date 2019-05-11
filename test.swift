import Foundation
import Cocoa

func test_logic_1(intArray:[Int],k:Int) -> [Int] {
    let N = intArray.count
    var result=[Int]()
    if k>N {
        return result
    }
    var temp=intArray
    for i in 1...k {
        let index = Int.random(in: 0..<N-i)
        result.append(temp[index])
        temp.remove(at: index)
    }
    return result
}

var intArray: [Int] = Array(0...20)

func test_logic_2(intArray:[Int],k:Int) -> [Int] {
    let N = intArray.count
    var result=Set<Int>()
    if k>N {
        return [Int]()
    }
    while result.count<k {
        let index = Int.random(in: 0..<N)
        result.insert(intArray[index])
    }
    return Array(result)
}

func printTimeElapsedWhenRunningCode(myfunc: ([Int],Int) -> [Int],
                                     intArray : [Int],
                                     N: Int,
                                     k: Int) {
    let startTime = CFAbsoluteTimeGetCurrent()
    for _ in 0...N {
        let _ = myfunc(intArray,k)
    }
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed: \(timeElapsed)s")
}

func bench_logic_1() {
    for _ in 0...100000 {
        let _ = test_logic_1(intArray: intArray, k: 20)
    }
}

func bench_logic_2() {
    for _ in 0...100000 {
        let _ = test_logic_2(intArray: intArray, k: 20)
    }
}

func bench_logic(myfunc: ([Int],Int) -> [Int],
                 intArray: [Int],
                 N: Int,
                 k: Int) {
    for _ in 0...N {
        let _ = myfunc(intArray,k)
    }
}

func measure<A>(name: String = "", _ block: () -> A) {
    let startTime = CACurrentMediaTime()
    let _ = block()
    let timeElapsed = CACurrentMediaTime() - startTime
    print("Time elapsed: \(name) : \(timeElapsed)s")
}
//measure { bench_logic_1() }

//measure { bench_logic_2() }

//printTimeElapsedWhenRunningCode()

//print(test_logic_2(intArray:intArray,k:15))

measure {bench_logic(myfunc: test_logic_1,
                    intArray: intArray,
                    N: 100000,
                    k: 20)}

printTimeElapsedWhenRunningCode(myfunc: test_logic_1,
                                intArray: intArray,
                                N: 100000,
                                k: 20)
