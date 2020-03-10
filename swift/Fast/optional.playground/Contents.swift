import UIKit

var carName: String?
carName = nil //명시적으로 표현도 가능
carName = "Tesla" //직접적으로 표현도 가능


// 아주 간단한 과제
// 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성하세요 (타입 String?)
// let num = Int("10") -> 타입은 무엇일까요?

var movieActor: String?
let num = Int("10")


//고급기능 4가지

// Forced unwrappint : 억지로 박스를 까기
// Optional binding(if let) : 부드럽게 박스 까기 1
// Optional bindint(guard) : 부드럽게 박스 까기 2
// Nil coalescing : 박스를 까보았더니, 값이 없으면 디폴트 값을 줘보자

//carName = nil
//print(carName!) //value만 가지고 오기위해 ! 사용을 한다.

if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car name 없다. ")
}

//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//        // Cyclomatic Complexity 가 생긱 되면 최대한 줄여야 합니다.
//    } else {
//        print("Int로 컨버팅이 안됩니다.")
//    }
//}
//printParsedInt(from: "100")
//printParsedInt(from: "Hello, My name is D_d")


func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅이 안됩니다.")
        return
    }
    print(parsedInt)
}
printParsedInt(from: "100")
printParsedInt(from: "Hello, My name is D_d")

carName = "모델3"
let myCarName: String = carName ?? "모델 S"



//도전과제
//1. 최애 음식이름을 담는 변수를 작성(String?)
//2. 옵셔널 바인딩을 이용해 값을 확인해보기
//3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

let favoriteFood : String? = "마라샹궈"
if let foodName = favoriteFood {
    print(foodName)
} else {
    print("좋아하는 특정 음식이 없음.")
}

func printNickName(name: String?) {
    guard let nickName = name else {
        print("nickname을 만들어 보자")
        return
    }
    print(nickName)
}
printNickName(name: "D_d")
