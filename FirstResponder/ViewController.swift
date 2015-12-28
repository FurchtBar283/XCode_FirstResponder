//
//  ViewController.swift
//  FirstResponder
//
//  Created by Michael Stroh on 28.12.15.
//  Copyright © 2015 Michael Stroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var prenameTextfield: UITextField!
    @IBOutlet weak var lastnameTextfield: UITextField!
    @IBOutlet weak var fullnameLabel: UILabel!
    
    var firstname = ""
    var lastname = ""
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == prenameTextfield {
            firstname = textField.text!
            fullnameLabel.text = firstname
            lastnameTextfield.becomeFirstResponder()
        } else {
            lastname = textField.text!
            fullnameLabel.text = firstname + " " + lastname
            lastnameTextfield.resignFirstResponder()
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.prenameTextfield.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

