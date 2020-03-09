import UIKit

//let num = 6
//
//switch num {
//case 0:
//    print("--> 0입니다.")
//case 1...9:
//    print("--> 1부터 9사이 숫자입니다.")
//case 10:
//    print("--> 10입니다.")
//default:
//    print("--> 그외 숫자입니다.")
//}
//
//
//let pet = "bird"
//
//switch pet {
//case "dog", "cat":
//    print("--> 집동물이네요?")
//default:
//    print("--> 잘 모르겠습니다.")
//}



let num = 20
switch num {
case _ where num % 2 == 0 :  //조건에 합당한 모둔 경우, 짝수를 출력 하시오.
    print("--> 짝수")
default:
    print("--> 홀수")
}


//튜플 & 스위치 구문

let coordinate = (x: 3, y: 3)
switch coordinate{
case (0,0):
    print("원점")
case (let x,0):
    print("x축의 값, x:\(x)")
case (0,_):
    print("y축의 값")
case(let x, let y): //_대신 값을 부여해 줄수도 있다.
    print("좌표 어딘가 x, y = \(x),\(y)")
case(let x, let y) where x == y:
    print("x와 y의 값이 같음 x,y = \(x),\(y)")
}
