//
//  ViewController.swift
//  Swift _TextFieldDelegates
//
//  Created by Jhuanderson on 2/20/17.
//  Copyright © 2017 Jhuanderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    @IBOutlet weak var TextField3: UITextField!
    @IBOutlet weak var counterLabel: UILabel!
    
    let emojiChanger = EmojiDelegate()
    let colorChanger = ColorTextFieldDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //to hide a label
        self.counterLabel.isHidden = true
        // Set the three delegates
        self.TextField1.delegate = emojiChanger
        self.TextField2.delegate = colorChanger
        self.TextField3.delegate = self
        
    }
    

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Figure out what the new text will be, if we return true
        var newText: NSString = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        if newText.length == 0{
            self.counterLabel.isHidden = true
        }
        else{
            self.counterLabel.isHidden = false
            self.counterLabel.text = String(newText.length)

        }
           // returning true gives the text field permission to change its text
        return true;
    }
}
