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
    //helper function
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    func playSound(soundName: String){
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
        
        
       //show message
        index = nonRepeatingRandom(lastNumber: index , maxValue: messages.count)
        messageLabel.text = messages[index]
        // showing pictures
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex , maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
       // Play a Sound
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex , maxValue: numberOfSounds)
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
    }
    
}

