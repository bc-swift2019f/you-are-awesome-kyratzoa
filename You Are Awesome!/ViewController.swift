//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anastasia Kyratzoglou on 9/1/19.
//  Copyright © 2019 Anastasia Kyratzoglou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = "You are Awesome!"
        let message2 = "You are Great!"
        let message3 = "You are Amazing!"
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2{
            messageLabel.text = message3
        } else{
            messageLabel.text = message1
        }
    }
    
}

