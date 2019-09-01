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
        if messageLabel.text == "You are Awesome!" {
            messageLabel.text = "You are Great!"
        } else if messageLabel.text == "You are Great!" {
            messageLabel.text = "You are Amazing!"
        } else{
            messageLabel.text = "You are Awesome!"
        }
    }
}

