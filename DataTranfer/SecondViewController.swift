//
//  SecondViewController.swift
//  DataTranfer
//
//  Created by apple on 01/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var userName: String?
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = userName {
            messageLabel.text = "Hello " + user
        } else {
            messageLabel.text = "Hello User"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
