import UIKit

//var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}

//var multiplyClosure: (Int, Int) -> Int = {
//    $0 * $1
//}

var multiplyClosure: (Int, Int) -> Int = { a, b in
   return a * b
}

//3가지 모두 동일한 뜻을 가지나 적당히 줄이는게 좀더 보기가 좋다.

let result = multiplyClosure(4,2)


func operateTwoNum(a: Int, b: Int, opertion: (Int, Int) -> Int) -> Int {
    let result = opertion(a, b)
    return result
}
operateTwoNum(a: 4, b: 2, opertion: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, opertion: addClosure)
operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}


//클로저는 이름없는 메서드이다.
// 실무에서 내가 원하는 위치에 입맛에 따라 그때 그때 상황에 따라 끼워넣을수 있다.


//input만 있고, output이 없는 클로저의 예제

let voidClosure: () -> Void = {
    print("ios 개발자 짱!")
}
voidClosure()



//Capturing Values

var count = 0
let incrementer = {
    count += 1
}
incrementer()
incrementer()
incrementer()
count
