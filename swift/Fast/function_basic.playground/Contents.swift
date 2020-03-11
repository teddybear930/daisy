import UIKit

func printName() {
    print("--> My name is D_d")
}

printName()

//param 1개
//숫자를 받아서 10을 곱해서 출력한다.

func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}
printMultipleOfTen(value: 5)


//param 2개
//물건 값과 갯수를 받아서 전체 금액을 출력하는 함수

func printTotalPrice(price: Int, count: Int) {
    print("Total Price : \(price * count)")
}
printTotalPrice(price: 1500, count: 5)


func printTotalPrice(_ price: Int, _ count: Int) {
    print("Total Price : \(price * count)")
}
printTotalPrice(1500, 4)
printTotalPrice(1500, 3)

func printTotalPriceDefaultValue(price: Int = 1500, count: Int) {
    print("Total Price : \(price * count)")
}
printTotalPriceDefaultValue(count: 2)
printTotalPriceDefaultValue(count: 1)

//만약 재품의 가격이 바뀔경우는? 아래와 같이 진행하면 된다.
printTotalPriceDefaultValue(price: 2000, count: 1)


func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}

let calculatedprice = totalPrice(price: 10000, count: 77)
calculatedprice


