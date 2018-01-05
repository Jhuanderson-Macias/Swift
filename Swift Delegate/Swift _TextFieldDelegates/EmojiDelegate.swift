//
//  File.swift
//  Swift _TextFieldDelegates
//
//  Created by Jhuanderson on 2/20/17.
//  Copyright © 2017 Jhuanderson. All rights reserved.
//

import Foundation
import UIKit

//Create EmojiDelegatec

class EmojiDelegate : NSObject, UITextFieldDelegate {
    
    //properties- Dictionary
    var translations = [String: String]()
    
    // MARK: Initializer
    override init() {
        super.init()
        
        translations["heart"] = "\u{0001F496}"
        translations["fish"] = "\u{E522}"
        translations["bird"] = "\u{E523}"
        translations["frog"] = "\u{E531}"
        translations["bear"] = "\u{E527}"
        translations["dog"] = "\u{E052}"
        translations["cat"] = "\u{E04F}"
    }

 // when keys are inputted in the text field 

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       
        var replace = false
        var emojiStringRange: NSRange
        
        // Construct the text that will be in the field if this change is accepted
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
  
        for (emojiString,emoji) in translations {
            //search all occurances
            repeat{
                
                emojiStringRange = newText.range(of: emojiString, options:NSString.CompareOptions.caseInsensitive )
                print(emojiStringRange.location)
                if emojiStringRange.location != NSNotFound {
                    newText = newText.replacingCharacters(in: emojiStringRange, with: emoji) as NSString
                    replace = true
                    
                }
            }while emojiStringRange.location != NSNotFound
            
        }
        // If we have replaced an emoji, then we directly edit the text field
        // Otherwise we allow the proposed edit.
        
        if replace {
            textField.text = newText as String
            return false
        } else {
            return true
        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }

   
}
    
    

