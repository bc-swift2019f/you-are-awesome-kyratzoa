//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anastasia Kyratzoglou on 9/1/19.
//  Copyright © 2019 Anastasia Kyratzoglou. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
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
        
        

        var newIndex: Int   // This declares but doesnt initialize newIndex
        //showing messages
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        // showing pictures
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
       // Get a random number to use in our soundName file
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex

        soundIndex = newIndex
        //Play a sound
        var soundName = "sound\(soundIndex)"
        //Can we load in the file soundName
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                    awesomePlayer.play()
                } catch{
                //if sound.data is not a valid file throws an error
                print("Error: file\(soundName) couldn't load.")
                }
                } else {
            // if reading in the NSDataAsset didnt work tell the developer report the error
            print("Error: file\(soundName) didn't load.")
        }
    }
    
}

