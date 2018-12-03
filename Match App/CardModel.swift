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
        
        // Randomly generate pairs of cards
        for _ in 1...8 {
            // Get a random number
            let randomNumber = arc4random_uniform(13) + 1
            // Log the number
            print("Generating a random number: \(randomNumber)")
            // Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            generatedCardArray.append(cardOne)
            
            // Create the second card object
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            generatedCardArray.append(cardTwo)
            
            // OPTIONAL: Make it so we only have unique pairs of cards
        }
        
        // TODO: Randomize the array
        
        // Return the array
        return generatedCardArray
    }
}
