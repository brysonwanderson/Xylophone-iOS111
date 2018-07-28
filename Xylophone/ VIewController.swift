//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController{
    
    
    let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
       
        
        switch sender.tag {
            case 1:
                playNote(noteValue: "note1")
            case 2:
                playNote(noteValue: "note2")
            case 3:
                playNote(noteValue: "note3")
            case 4:
                playNote(noteValue: "note4")
            case 5:
                playNote(noteValue: "note5")
            case 6:
                playNote(noteValue: "note6")
            case 7:
                playNote(noteValue: "note7")
            default:
                print("This is an Error")   
        }
        
    }
    
    func playNote(noteValue: String ) {
        let url = Bundle.main.url(forResource: noteValue, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        }
        catch {error as Error}; do {
            print(Error.self)
        }
    }
    
    
    
}

