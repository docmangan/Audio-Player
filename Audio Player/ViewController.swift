//
//  ViewController.swift
//  Audio Player
//
//  Created by William Thomas Mangan on 10/12/16.
//  Copyright © 2016 William Mangan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()
    var randomNumber = 0
    let musicFile = ["lullaby1","lullaby2","lullaby3","lullaby4","lullaby5","lullaby6","lullaby7","lullaby8","lullaby9"]
    
    func changeSong() {
        randomNumber += 1
        
        }
    
    @IBAction func Play(_ sender: AnyObject) {
        
        player.play()
    }
    
    @IBAction func Pause(_ sender: AnyObject) {
        player.pause()
    }
    
    @IBAction func Stop(_ sender: AnyObject) {
        player.stop()
        player.currentTime = 0
    }
    
    @IBAction func Next(_ sender: AnyObject) {
      changeSong()
        print( (randomNumber))
      
        player.play()
    }
    
    @IBAction func Loop(_ sender: AnyObject) {
        player.numberOfLoops = -1
    }
    
    @IBAction func sliderMoved(_ sender: AnyObject) {
        player.volume = slider.value
    }
    
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     let musicFile = ["lullaby1","lullaby2","lullaby3","lullaby4","lullaby5","lullaby6","lullaby7","lullaby8","lullaby9"]
        
     let randomNumber = Int(arc4random_uniform(UInt32(musicFile.count)))
       
        let audioPath = Bundle.main.path(forResource: musicFile[randomNumber], ofType: "mp3")
        
        do {
           try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
         
        }
        catch {
            // process any errors
            
        }
    }

  


}

