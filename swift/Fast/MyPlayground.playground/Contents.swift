import UIKit

//var str = "Hello, playground"
//
//
//let value = arc4random_uniform(100)
//print("--> \(value)")


//Tuple

let coordinates = (4, 6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3


//Boolean

//let yes = true
//let no = false
//
//let inFourGreaterThanFive = 4 > 5
//
//if inFourGreaterThanFive {
//    print("---> 참")
//} else {
//    print("---> 거짓")
//}


//if 조건... {
//    // 조건이 참인 경우에 수행하는 코드를 여기에 적으시오
//} else {
//    // 조건이 거짓인 경우에 수행하는 코드를 여기에 적으시오
//}

let a = 5
let b = 10

//if a > b {
//    print("--> a가 크다")
//} else {
//    print("--> b가 크다")
//}

let name1 = "Jin"
let name2 = "jason"

let isTwoNameSame = name1 == name2

// = 할당의 키워드, == 같은지 비교하는 연산자

if isTwoNameSame {
    print("--> 이름이 같아요")
} else {
    print("--> 이름이 다릅니다")
}


let isJason =  name2 == "Jason"
let isMale = true

let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale



//let greetingMessage: String
//if isJason {
//    greetingMessage = "Hello Jason"
//} else {
//    greetingMessage = "Hello Somebody"
//}
//print("Msg: \(greetingMessage)")

//아래의 코드처럼 5줄짜리 코드를 1줄짜리 코드로 줄일 수도 있습니다.

let greetingMessage: String = isJason ? "Hello Jason" : "Hello Somebody"
print("Msg: \(greetingMessage)")



//변수가 사용되는 범위를? scope이라고 한다
// ----- Scope


var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}

salary += hours * payPerHour

//print(hours)
//위의 예제에서! extraHours는 if코드 블럭 안에서만 쓸수 있음(이 상태를 scope이라고 한다.)
