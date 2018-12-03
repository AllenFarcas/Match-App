//
//  CardModel.swift
//  Match App
//
//  Created by Allen-Jasmin Farcas on 22/11/2018.
//  Copyright © 2018 Allen-Jasmin Farcas. All rights reserved.
//

import Foundation

class CardModel {
    func getCard () -> [Card] {
        // Declare an array to store the generated cards
        var generatedCardArray = [Card]()
        var randomArray = [Int]()
        
        // Randomly generate pairs of cards
        repeat {
            // Get a random number
            let randomNumber:Int = Int(arc4random_uniform(13) + 1)
            
            // Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            // Check if the number exists already
            if randomArray.contains(randomNumber) == false {
                
                // Log the number
                print("Generating a random number: \(randomNumber)")
                randomArray.append(randomNumber)
                generatedCardArray.append(cardOne)

                // Create the second card object
                let cardTwo = Card()
                cardTwo.imageName = "card\(randomNumber)"
                generatedCardArray.append(cardTwo)
            }
            // OPTIONAL: Make it so we only have unique pairs of cards
        } while generatedCardArray.count < 16
        
        // TODO: Randomize the array
        
        // Return the array
        return generatedCardArray
    }
}
