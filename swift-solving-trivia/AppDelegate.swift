//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func applicationDidFinishLaunching(application: UIApplication) {
        let locations = [ "New Jersey"   : "Trenton",
                          "South Dakota" : "Pierre"
                        ]
        
        print(solveTrivia(locations))
    }
    
    func solveTrivia(locations: [String : String]) -> String {
        var found: String = ""
        
        for (state, capital) in locations {
            if (!containsCharacter(state.lowercaseString, capital: capital.lowercaseString)) {
                found = state
            }
        }
        
        return found
    }
    
    func containsCharacter(state: String, capital: String) -> Bool {
        var contains = false
        
        for c: Character in capital.characters {
            if (state.characters.contains(c)) {
                contains = true
            }
        }
        
        return contains
    }
}

