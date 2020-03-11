import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

//let isEmpty = evenNumbers.isEmpty

evenNumbers.count

print(evenNumbers.first)

//evenNumbers = []
//let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first {
    print("--> first item is : \(firstElement)")
}

evenNumbers.min()
evenNumbers.max()
//있을수도 있고 없을수도 있는것은 optional

var firstItem = evenNumbers[0]
var secondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

//var twentithItem = evenNumbers[19]  //오류

// ----->

let firstThree = evenNumbers[0...2]
evenNumbers

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at:0)
evenNumbers

//evenNumbers = []
//evenNumbers.removeAll() //전체 범위 제거 []랑 동일한 방법

evenNumbers.remove(at: 0) // 해당하는 위치 제거
evenNumbers

evenNumbers[0] = -2 //헤딩 하는 순번의 숫자 변경
evenNumbers

evenNumbers[0...2] = [-2, 0, 2] //해당 하는 범위의 숫자 변경
evenNumbers

evenNumbers.swapAt(0, 1) //위치 교체
evenNumbers

//for num in evenNumbers {
//    print(num)
//}


for(index, num) in evenNumbers.enumerated(){
    print("idx: \(index), value: \(num)")
}

evenNumbers.dropFirst(3) //앞의 3개만 털고 나머지를 알고 싶을때, 실제적으로 변수에 영향을 주지는 않는다
evenNumbers

let firstThreeRemoved = evenNumbers.dropFirst(3)  //last도 동일
evenNumbers

let ffirstThree = evenNumbers.prefix(3)
ffirstThree

let lastThree = evenNumbers.suffix(3)
lastThree



