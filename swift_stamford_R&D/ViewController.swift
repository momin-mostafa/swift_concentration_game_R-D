//
//  ViewController.swift
//  swift_stamford_R&D
//
//  Created by MD Al Momin Mostafa on 23/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
    var flipCount = 0
    
    var emojiChoices = ["👻","♠️","⭐️","👻","♠️","⭐️"]

    @IBOutlet weak var flipCountLable: UILabel!
    
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func Card(_ sender: UIButton) {
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }

    }
     
    
    func flipCard(withEmoji emoji:String, on button:UIButton) {
        flipCount += 1
        flipCountLable.text = "Flip : \(flipCount)"
        if button.currentTitle == emoji {
            print("Tap")
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }else{
            print("Tap back")
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.systemOrange
        }
    }
}

