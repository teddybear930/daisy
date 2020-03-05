//
//  ViewController.swift
//  imageViewMission
//
//  Created by 동빠기 on 2020/02/11.
//  Copyright © 2020 D_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxImage = 6
    var numImage = 1
    
    @IBOutlet var imageViewer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func imgBack(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        let changeImage = String(numImage) + ".png"
        imageViewer.image = UIImage(named:changeImage)
        
    }
    
    @IBAction func imgNext(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let changeImage = String(numImage) + ".png"
        imageViewer.image = UIImage(named:changeImage)
    }
}

