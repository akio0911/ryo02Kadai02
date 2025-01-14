//
//  ViewController.swift
//  ryo02Kadai2
//
//  Created by 大田涼介 on 2023/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var value1: UITextField!
    @IBOutlet private weak var value2: UITextField!
    
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction private func calculationButton(_ sender: Any) {
        let inputValue1 = Float(value1.text ?? "") ?? 0
        let inputValue2 = Float(value2.text ?? "") ?? 0
        
        switch  segmentedControl.selectedSegmentIndex{
        case 0:
            resultLabel.text = String(inputValue1 + inputValue2)
        case 1:
            resultLabel.text = String(inputValue1 - inputValue2)
        case 2:
            resultLabel.text = String(inputValue1 * inputValue2)
        case 3:
            if (inputValue2 == 0){
                resultLabel.text = "割る数には0以外を入力してください"
            } else {
                resultLabel.text = String(inputValue1 / inputValue2)
            }
            resultLabel.text = String(inputValue1 / inputValue2)
        default:
            break
        }
    }
}
