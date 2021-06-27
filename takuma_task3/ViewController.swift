//
//  ViewController.swift
//  takuma_task3
//
//  Created by 小川卓馬 on 2021/06/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var firstNumberTextField: UITextField!
    @IBOutlet weak private var secondNumberTextField: UITextField!
    @IBOutlet weak private var firstNumberSignSwitch: UISwitch!
    @IBOutlet weak private var secondNumberSignSwitch: UISwitch!
    @IBOutlet weak private var firstNumberLabel: UILabel!
    @IBOutlet weak private var secondNumberLabel: UILabel!
    @IBOutlet weak private var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstNumberTextField.keyboardType = .numberPad
        secondNumberTextField.keyboardType = .numberPad
    }

    @IBAction private func tapCalculateButton(_ sender: UIButton) {
        let firstNumber = Int(firstNumberTextField.text!) ?? 0
        let secondNumber = Int(secondNumberTextField.text!) ?? 0

        let signedFirstNumber = firstNumberSignSwitch.isOn ? -firstNumber : firstNumber
        let signedSecondNumber = secondNumberSignSwitch.isOn ? -secondNumber : secondNumber

        let answerText = signedFirstNumber + signedSecondNumber

        firstNumberLabel.text = String(signedFirstNumber)
        secondNumberLabel.text = String(signedSecondNumber)
        answerLabel.text = String(answerText)
    }
}
