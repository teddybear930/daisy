//
//  ViewController.swift
//  ImageView
//
//  Created by 동빠기 on 2020/02/11.
//  Copyright © 2020 D_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false  //이미지 확대 여부를 나타내는 Bool타입의 변수
    var imgOn: UIImage?  //켜진 전구 이미지를 가지고 있는 UIImage 타입의 변수
    var imgOff: UIImage?  //꺼진 전구 이미지를 가지고 있는 UIImage 타입의 변수
    
    @IBOutlet var imgView: UIImageView!  //이미지 뷰에 대한 아웃렛 변수
    @IBOutlet var btnResize: UIButton!  //버튼에 대한 아웃렛 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")  //imgOn에 lamp_on.png 이미지 할당
        imgOff = UIImage(named: "lamp_off.png")  //imgOff에 lamp_off.png 이미지 할당
        
        imgView.image = imgOn  //위에서 할당한 On이미지를 imgView에 할당
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0  //확대할 배율값
        var newWidth:CGFloat, newHeight:CGFloat  //확대할 크기의 계산 값을 보관할 변수
        
        if (isZoom) { //true. 현재 확대된 그림일 경우(즉, 타이틀은 축소)
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)  //버튼의 타이틀을 확대로 변경
        }
        else { //false. 현재 축소된 그림일 경우(즉, 타이틀은 확대)
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)  //버튼의 타이틀을 축소로 변경
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    //On/Off 스위치에 대한 액션 함수
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
}

