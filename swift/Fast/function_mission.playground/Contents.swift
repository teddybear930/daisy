import UIKit

//1, 성, 이름을 받아서 fullname을 출력하는 함수 만들기

//2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

//3. 성, 이름을 받아서 fullname return 하는 함수 만들기



func printFullName(firstName: String,lastName: String){
    print("My name is \(firstName) \(lastName)")
}
printFullName(firstName: "Lee", lastName: "DongMin")


func printFullName(_ firstName: String,_ lastName: String){
    print("My name is \(firstName) \(lastName)")
}
printFullName("Lee","Dongmin")


func fullName(firstName: String, lastName: String) -> String{
    return "\(firstName) \(lastName)"
}
let name = fullName(firstName: "Lee", lastName: "Dongmin")
