import UIKit
import Foundation

// --- While

//while 조건 { ... code ... }

//var i = 0
//while i < 10 {
//    print(i)
//    i += 1
//}

print("---while")
var i = 10
while i < 10 {
    print(i)
//    if i == 5 {
//        break
//    }
    i += 1
}


print("---repeat")
i = 10
repeat {
    print(i)
    i += 1
} while i < 10


//i가 10일 경우? repeat과 while의 차이점을 볼수 있다.
//while은?
//조건 > 코드 수행 > 조건 > 코드수행
//
//repeat while은?
//코드 수행 > 조건 > 코드수행 > 조건



// --- For Loop

let closedRange = 0...10  //포함된 숫자는 0에서 10까지
let halfCloseRange = 0..<10  //포함된 숫자는 0에서 9까지

var sum = 0
for i in closedRange {
    print("---> \(i)")
    sum += i
}

print("---> total sum: \(sum)")


var sinValue: CGFloat = 0

for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}


let name = "Jason"
for _ in closedRange {
    print("---> name: \(name)")
}

//for i in closeRange ~ 사용되지 않는 i 변수일 경우는 위처럼 언더바를 사용해준다.


for i in closedRange {
    if i % 2 == 0 {
        print("---> 짝수 : \(i)")
    }
}

// for i in closedRange where 조건 { ... } 으로 사용하면 좀더 코드를 간편화 할수 있습니다.
for i in closedRange where i % 2 == 0 {
    print("---> 짝수 : \(i)")
}


for i in closedRange {
    if i == 3 {
        continue
    }  // i가 3일경우는 건너 뛰어라.
    print("---> \(i)")
}



for i in closedRange {
    for j in closedRange {
        print("gugudan -> \(i) * \(j) = \(i * j)")
    }
}
