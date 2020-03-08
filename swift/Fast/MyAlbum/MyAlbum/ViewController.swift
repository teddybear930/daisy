//
//  ViewController.swift
//  MyAlbum
//
//  Created by 동빠기 on 2020/02/17.
//  Copyright © 2020 D_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    @IBOutlet var priceLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }


    @IBAction func btn(_ sender: Any) {
        let message = "가격은 ₩\(currentValue) 입니다."
        let alert = UIAlertController(title: "Mission", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    func refresh(){
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "₩ \(currentValue)"
    }
}

