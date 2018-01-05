//
//  ViewController.swift
//  Simple Wallet
//
//  Created by Jhuanderson on 1/4/18.
//  Copyright © 2018 Jhuanderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["list1", "list2","list3"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "walletCoinName")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        var activity = UIActivityViewController(activityItems: ["String"], applicationActivities:nil)
        activity.popoverPresentationController?.sourceView = self.view
        present(activity, animated: true, completion: nil)
        
        /*
        let alertController = UIAlertController(title: "Wallet Selected",
                                                message: "This is an alert.", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Ok",
                                          style: UIAlertActionStyle.cancel,
                                          handler:nil)
        
        alertController.addAction(defaultAction)
        
       present(alertController, animated: true, completion: nil)
        */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

