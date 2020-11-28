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
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
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
        view.backgroundColor = UIColor(cgColor: gameState.color)
        if gameState == .start {
            appSign.text = "👽"
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
        } 
    }
    
    func play(with playerSign: Sign) {
        let randomAppSign = getRandomSign()
        let currentGameState = playerSign.compareSign(to: randomAppSign)
        updateUI(for: currentGameState)
        appSign.text = randomAppSign.signImage
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        switch playerSign {
        case .rock:
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
        }
        playAgainButton.isHidden = false
    }

}
