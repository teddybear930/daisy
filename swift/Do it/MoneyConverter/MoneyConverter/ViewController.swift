//
//  ViewController.swift
//  MoneyConverter
//
//  Created by 동빠기 on 2020/02/09.
//  Copyright © 2020 D_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var currencySegment: UISegmentedControl!
    @IBOutlet var sourceMoneyField: UITextField!
    
    @IBOutlet var targetMoneyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertMoney(sender: AnyObject) {
        guard let sourceCurrency = Currency(rawValue: currencySegment.selectedSegmentIndex)
        else {
            print("Source Current Error")
            return
        }
        guard let sourceAmount = Double(sourceMoneyField.text!)
        else {
            targetMoneyLabel.text = "Error"
            return
        }
        let sourceMoney = Money(sourceAmount, currency: sourceCurrency)
        
        
        var targetMoneyString = ""
        for i in 0..<4 {
            targetMoneyString +=
                sourceMoney.valueInCurrency(currency: Currency.init(rawValue: i)!)
            targetMoneyString += "\r\n"
        }
        targetMoneyLabel.text = targetMoneyString
    }
    
}

