/*
 *  SingleMatch.swift
 *  RoshamboHistory
 *
 *  Created by Paul Lewallen on 6/11/23.
 *
 */

import UIKit

// MARK: - RPSMatch
struct RPSMatch {
    // The RPSMatch struct stores the results of a match.
    // Now we're ready to store multiple matches in an array, so users can track their match history.
    
    // MARK: Properties
    let p1: RPS
    let p2: RPS
    let date: Date
    
    // MARK: Initializer
    /*
     * if initialized without a date, use the current date
     */
    init(p1: RPS, p2: RPS) {
        self.p1 = p1
        self.p2 = p2
        self.date = Date()
    }
    
    // MARK: Computed Properties
    var winner: RPS {
        get {
            return p1.defeats(p2) ? p1 : p2
        }
    }
    
    var loser: RPS {
        get {
            return p1.defeats(p2) ? p2 : p1
        }
    }
}
