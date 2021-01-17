//
//  Tournament.swift
//  PicChallenge
//
//  Created by Jannik Feuerhahn on 17.01.21.
//

import Foundation

class Tournament {
    
    var matches = [Match]()
    
    func next() -> Match? {
        guard matches.count > 0 else {
            return nil
        }
        return matches.removeFirst()
    }
    
    func add(_ match:Match) {
        matches.append(match)
    }
    
}

class Match {
    
}
