//
//  ViewController.swift
//  DataTranfer
//
//  Created by apple on 01/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let userName = userNameTF.text, userName.count != 0 {
            return true
        } else {
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc = segue.destination as! SecondViewController
        svc.userName = userNameTF.text!
    }
     
    @IBAction func movedBack(segue: UIStoryboardSegue) {
        print("Moved back from 2 to 1")
        let svc = segue.source as! SecondViewController
        print(svc.messageLabel.text!)
    }
}

