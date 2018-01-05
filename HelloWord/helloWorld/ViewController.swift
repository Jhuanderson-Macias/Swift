//
//  ViewController.swift
//  helloWorld
//
//  Created by Jhuanderson on 2/19/17.
//  Copyright © 2017 Jhuanderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    var button = UIButton(type:UIButtonType.system) as UIButton
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pressButton()
        label_desc()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Create Label
    func label_desc(){
        label.text = "Hello World"
        label.frame = CGRect(x: view.frame.width/2 - 100, y: view.frame.height/2 - 100, width:200, height:36)
        label.backgroundColor = UIColor.gray
        
        view.addSubview(label)
        
    }
    //Button Properties
    func pressButton(){
        button.setTitle("Press to Change", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.backgroundColor = UIColor.darkGray
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        
        button.frame = CGRect(x: view.frame.width/2 - 100, y: view.frame.height/2 - 18, width:200, height:36)
        view.addSubview(button)
      //Add Target Action
      button.addTarget(self, action: #selector(ViewController.alert_Pressed(sender:)), for: .   touchUpInside)
    }
    
    
   func alert_Pressed(sender: AnyObject ){
    
        
        let alertController = UIAlertController(title: "name",
                                                message: "To Update Label Enter Name here",
                                                preferredStyle: UIAlertControllerStyle.alert)
        alertController.addTextField (configurationHandler: {(textField: UITextField) in
            textField.placeholder = " New Name"
            textField.keyboardType = UIKeyboardType.alphabet
        })
    
        let action = UIAlertAction(title: "Done",
                               style: UIAlertActionStyle.default,
                               handler:{(alertAction: UIAlertAction) in
                                let name: String = alertController.textFields![0].text!
                                self.label.text = "Hello " + name
        })
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)

    }
 

}

