//
//  ViewController.swift
//  SecondAssingment
//
//  Created by user236597 on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFirstName: UITextField!
    @IBOutlet weak var textLastName: UITextField!
    @IBOutlet weak var textCountryName: UITextField!
    @IBOutlet weak var textAge: UITextField!
    @IBOutlet weak var textMessage: UITextView!
    @IBOutlet weak var lableMessage: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        let fullName = textFirstName.text! + " " + textLastName.text!
        let userInfo = "FullName: \(fullName)\nCountry: \(textCountryName.text!)\nAge: \(textAge.text!)"
        textMessage.text = userInfo
    }
    @IBAction func submitButton(_ sender: Any) {
        if textFirstName.text!.isEmpty || textLastName.text!.isEmpty || textCountryName.text!.isEmpty || textAge.text!.isEmpty {
            lableMessage.text = "Complete the missing info!"
        }
        else {
            lableMessage.text = "Successfully submitted!"
        }
        lableMessage.isHidden = false
    }
    @IBAction func clearButton(_ sender: Any) {
        textFirstName.text = ""
        textLastName.text = ""
        textCountryName.text = ""
        textAge.text = ""
        textMessage.text = ""
        lableMessage.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lableMessage.isHidden = true
        // Do any additional setup after loading the view.
    }
}
