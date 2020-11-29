//
//  ViewController.swift
//  RPS
//
//  Created by Vadim Colcev on 11/28/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
//    @IBOutlet weak var rockButton: UIButton!
//    @IBOutlet weak var paperButton: UIButton!
//    @IBOutlet weak var scissorsButton: UIButton!
//    @IBOutlet weak var playAgainButton: UIButton!
    
    
 
    @IBOutlet var uiButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(for: .start)
        // Do any additional setup after loading the view.
    }

    @IBAction func playAgain(_ sender: Any) {
        updateUI(for: .start)
    }
    
    @IBAction func rockPressed(_ sender: Any) {
        play(with: .rock)
    }
    @IBAction func paperPressed(_ sender: Any) {
        play(with: .paper)
    }
    @IBAction func scissorsPressed(_ sender: Any) {
        play(with: .scissors)
    }
    
    
    func updateUI(for gameState: GameState) {
        gameStatus.text = gameState.text
        view.backgroundColor = gameState.color
        if gameState == .start {
            appSign.text = "👽"
            uiButtons[3].isHidden = true
            uiButtons[0].isHidden = false
            uiButtons[1].isHidden = false
            uiButtons[2].isHidden = false
            uiButtons[0].isEnabled = true
            uiButtons[1].isEnabled = true
            uiButtons[2].isEnabled = true
        } 
    }
    
    func play(with playerSign: Sign) {
        let randomAppSign = getRandomSign()
        let currentGameState = playerSign.compareSign(to: randomAppSign)
        updateUI(for: currentGameState)
        appSign.text = randomAppSign.signImage
        uiButtons[0].isEnabled = false
        uiButtons[1].isEnabled = false
        uiButtons[2].isEnabled = false
        switch playerSign {
        case .rock:
            uiButtons[1].isHidden = true
            uiButtons[2].isHidden = true
        case .paper:
            uiButtons[0].isHidden = true
            uiButtons[2].isHidden = true
        case .scissors:
            uiButtons[0].isHidden = true
            uiButtons[1].isHidden = true
        }
        uiButtons[3].isHidden = false
    }

}
