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

    var color: UIColor {
        switch self {
        case .start:
            return UIColor.darkGray
        case .draw:
            return UIColor.purple
        case .lose:
            return UIColor.red
        case .win:
            return UIColor.green
        }
    }
}
