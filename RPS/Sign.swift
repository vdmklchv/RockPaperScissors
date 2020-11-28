//
//  File.swift
//  RPS
//
//  Created by Vadim Colcev on 11/28/20.
//

import Foundation

func getRandomSign() -> Sign {
    let randomNumber = Int.random(in: 0...2)
    if randomNumber == 0 { return Sign.rock }
    else if randomNumber == 1 { return Sign.paper }
    else { return Sign.scissors }
}

enum Sign {
    case rock, paper, scissors
    
    var signImage: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func compareSign(to anotherSign: Sign) -> GameState {
        switch self {
        case .rock:
            if anotherSign == .paper {
                return .lose
            } else if anotherSign == .scissors {
                return .win
            } else {
                return .draw
            }
        case .paper:
            if anotherSign == .rock {
                return .win
            } else if anotherSign == .scissors {
                return .lose
            } else {
                return .draw
            }
        case .scissors:
            if anotherSign == .rock {
                return .lose
            } else if anotherSign == .paper {
                return .win
            } else {
                return .draw
            }
        }
    }
}
