//
//  GameState.swift
//  RPS
//
//  Created by Vadim Colcev on 11/28/20.
//

import Foundation
import UIKit

enum GameState {
    case start, win, lose, draw
    
    var text: String {
        switch self {
        case .start:
            return "Rock, Paper or Scissors?"
        case .draw:
            return "It's a draw!"
        case .lose:
            return "You've lost (:"
        case .win:
            return "You won! :)"
        }
    }

    var color: CGColor {
        switch self {
        case .start:
            return CGColor(red: CGFloat(0.8), green: CGFloat(0.8), blue: CGFloat(0.8), alpha: CGFloat(1))
        case .draw:
            return CGColor(red: CGFloat(1), green: CGFloat(0), blue: CGFloat(1), alpha: CGFloat(1))
        case .lose:
            return CGColor(red: CGFloat(1), green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(1))
        case .win:
            return CGColor(red: CGFloat(0), green: CGFloat(1), blue: CGFloat(0), alpha: CGFloat(1))
        }
    }
}
