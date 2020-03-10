import UIKit

//func functionName(externalName param: ParamType) -> ReturnType {
//    //......
//    return returnValue
//}

func printTotalPrice(price: Int, count: Int) {
    print(" Total Price : \(price * count)")
}

func printTotalPrice(price: Double, count: Double) {
    print(" Total Price : \(price * count)")
}



//In-out psramter

//func incrementAndPrint(_ value: Int) {
//    value += 1  //value에서 경고창이 뜨게 됩니다.
//    print(value)
//}

var value = 3
func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
}
incrementAndPrint(&value)


//Function as a param

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add  //option을 누르고 함수 부분 물음표로 누르면 함수의 타입을 알수 있다.
function(4,2)
function = subtract
function(4,2)
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a,b)
    print(result)
}
printResult(add, 10, 5)
printResult(subtract, 10, 5)

