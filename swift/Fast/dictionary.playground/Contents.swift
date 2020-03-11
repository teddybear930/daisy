import UIKit

//dictionary는 순서를 보존해 주지 않는다!!

var scoreDic: [String: Int] = ["Jason": 80, "Jay": 90, "D_d": 100]
//var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 90, "D_d": 100]

scoreDic["Jason"]
scoreDic["Jay"]

scoreDic["Dd"] //경우의수에 없는경우, nil

//위의 경우보다 아래 if let을 사용하는게 좀더 안정적이다.

if let score = scoreDic["Jason"] {
    score
} else {
    //...score 없는경우
}

//scoreDic = [:] //빈깡통을 만들때 [:] 표현한다
scoreDic.isEmpty
scoreDic.count

// 기존 사용자 업데이트
scoreDic["Jason"] = 99
scoreDic

//사용자 추가
scoreDic["Jack"] = 50
scoreDic

//사용자 제거
scoreDic["Jack"] = nil
scoreDic


//For Loop
for (name, score) in  scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}


//도전과제
//1. 이름, 직업, 도시에대해서 본인의 딕셔너리 만들기
//2. 여기서 도시를 부산으로 변경하기
//3. 딕셔너리를 받아서 이름과 도시 프린트

var myInformation : [String: String] = ["name": "D_d", "job": "Ios Engineer", "city": "seoul"]
myInformation["city"] = "Busan"
myInformation

func printNameCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("-->cannot find")
    }
}
printNameCity(dic: myInformation)
