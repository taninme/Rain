//
//  ViewController.swift
//  Rain
//
//  Created by Ferdous Ahmed on 1/1/15.
//  Copyright (c) 2015 Ferdous Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet var stopAudio: UIButton!
    

    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if var filePath = NSBundle.mainBundle().pathForResource("Rain1", ofType: "mp3")
        {
            var fileUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: fileUrl, error: nil)
            audioPlayer.enableRate = true
            
        }
        else{
            println("file path not found")}

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Rain1(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.play()
    }
    
    @IBAction func stopButton(sender: UIButton) {
        audioPlayer.stop()
        
    }
    
}

