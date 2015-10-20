//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Sushil Dahal on 10/19/15.
//  Copyright © 2015 Sushil Dahal. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            let filePathURL = NSURL.fileURLWithPath(filePath)
            do{
                audioPlayer = try AVAudioPlayer(contentsOfURL: filePathURL)
                audioPlayer.enableRate = true
            }catch{
                print("no instance of Audio Player")
            }
            
        }else{
            print("the filePath is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }

    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(1.5)
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }
    
    func playAudio(rate: Float){
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.currentTime = 0.0
        audioPlayer.play()    }
}
