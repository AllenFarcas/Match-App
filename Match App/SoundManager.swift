//
//  SoundManager.swift
//  Match App
//
//  Created by Allen-Jasmin Farcas on 03/12/2018.
//  Copyright © 2018 Allen-Jasmin Farcas. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        case flip
        case shuffle
        case match
        case nomatch
    }
    
    func playSound(_ effect:SoundEffect){
        var soundFileName = ""
        
        // Determine which sound effect we want to play
        // And set the appropiate file
        
        switch effect {
        case .flip:
            soundFileName = "cardflip"
        
        case .match:
            soundFileName = "dingcorrect"
            
        case .nomatch:
            soundFileName = "dingwrong"
            
        case .shuffle:
            soundFileName = "shuffle"
        }
        // Get the path to the sound file inside the bundle
        let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: "wav")
        
        guard bundlePath != nil else {
            print("Couldn't find sound file \(soundFileName) in the bundle.")
            return
        }
        
        // Create a URL object from this string path
        let soundURL = URL(fileURLWithPath: bundlePath!)
        
        do {
            // Create audio player object
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            
            // Play the sound
            audioPlayer?.play()
        } catch {
            // Couldn't create the audio player object, log the error
            print("Couldn't create the audio player object for sound file \(soundFileName)")
        }
    }
}
