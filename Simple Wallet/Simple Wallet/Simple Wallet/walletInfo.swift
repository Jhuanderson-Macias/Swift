//
//  walletInfo.swift
//  Simple Wallet
//
//  Created by Jhuanderson on 1/4/18.
//  Copyright © 2018 Jhuanderson. All rights reserved.
//

import UIKit

class walletInfo: UIViewController {
    
    
    @IBOutlet weak var walletInfo: UITextField!
    @IBOutlet weak var QRImage: UIImageView!
    
    @IBOutlet weak var save: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
