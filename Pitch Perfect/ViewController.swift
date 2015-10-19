//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Sushil Dahal on 10/19/15.
//  Copyright © 2015 Sushil Dahal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        stopButton.hidden = false
        recordingInProgress.hidden = false
        // TODO: Record audio
        print("in recordAudio")
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}
