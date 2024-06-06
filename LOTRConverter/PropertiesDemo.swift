//
//  PropertiesDemo.swift
//  LOTRConverter
//
//  Created by Hector Martinez on 7/29/24.
//

import Foundation
import SwiftUI

// Loop Example
struct LoopView: View {
    var body: some View {
        
        
        VStack {
            
            Text("Before loop")
            ForEach(0..<5) {_ in
                Text ("Hello, World!")
            }
            
            Text("After loop")
            
            
            Text("---------------------")
            
            Text("Before loop")
            ForEach(0..<5) {loop in
                Text ("\(loop) Hello, World!")
            }
            Text("After loop")
        }
    }
    
    
    
    // Model and Enum Examples
    
    enum Breed {
        case labrador
        case saintBernard
        case dalmation
        case Poodle
        case goldenRetriever
        case siberianHusky
    }
    enum Gender {
        case male
        case female
    }
    
    
    
    
    struct Puppy {
        let breed: Breed
        let furColor: [Color]
        let gender: Gender
        let eyeColot: Color
        let name: String
        var age = 0
        var playfulnessLevel: Int
        var aggressionLevel: Int
        var hungerLevel: Int
        
        func takeBath() {
            // Get in tub
            // Wash
            // Rinse
            // Get Out
            // Dry off
        }
        func eat() {
            // Run to food bowl
            // Knock it over
            // Eat food off floor
        }
        
        func fetch() {
            // Go to owner
            // observe the dirrection where the item got thrown
        }
        func sleep() {
            // Look for Cage
            // Go to bed
        }
    }
    
    let puppy = Puppy(breed: .labrador,
                      furColor: [.black, .white],
                      gender: .male,
                      eyeColot: .green,
                      name: "Pongo",
                      age: 1,
                      playfulnessLevel: 8,
                      aggressionLevel: 2,
                      hungerLevel: 5)
    
    let milo = Puppy(breed: .goldenRetriever,
                     furColor: [.black, .brown],
                     gender: .female,
                     eyeColot: .black,
                     name: "Milo",
                     playfulnessLevel: 9,
                     aggressionLevel: 1,
                     hungerLevel: 7)
    
}

//milo.eat()
//milo.sleep()


 // If Statement
/*
   if houseOnMap == redHouse {
       goLeft()
   } else if {
       houseOnMap == yellowHouse {
           goRight()
       } else {
           goStraight()
       }
       
       
//   Switch
       switch houseOnMap {
       case redHouse:
           goLeft()
       case yellowHouse:
           goRight()
       default:
           goStraight()
       }
   */
       



#Preview {
    LoopView()
}






