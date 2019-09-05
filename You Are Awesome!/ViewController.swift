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
    var index = 0
    
    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fanstatic!",
                        "When the genius bar needs help they call you",
                        "You brighten my day!",
                        "You are da bomb!",
                        "Hey, Fabulous!",
                        "You are tremedous!",
                        "You've got the design skills of Jony Ive!",
                        "I can't wait to download your app"]
        
        
//        var newIndex = -1
        var newIndex: Int   // This declares but doesnt initialize newIndex
    
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1{
//            index  = 0
//        }
//        else{
//            index += 1
//        }

        
//        let message1 = "You are Fanstatic!!!"
//        let message2 = "You are Great!"
//        let message3 = "You are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2{
//            messageLabel.text = message3
//        } else{
//            messageLabel.text = message1
//        }
    }
    
}

