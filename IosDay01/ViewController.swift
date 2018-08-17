//
//  ViewController.swift
//  IosDay01
//
//  Created by zack on 8/12/18.
//  Copyright © 2018 zack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flibCount:Int = 0 {
        didSet {
            if flibCount > 4 {
                flibCount = 0;
            }
            
            flibCountLabel.text = "\(flibCount)"
        }
    }
    
    var emojis = ["👿","😯","😯","👿"]
    
    @IBOutlet weak var flibCountLabel: UILabel!
    
//    @IBAction func touchFirstCard(_ sender: UIButton) {
//        print("zack——测试")
//
//        flibCard(withEmoji : "👿", on: sender)
//    }
//
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        print("zack——测试")
//        flibCard(withEmoji : "😯", on: sender)
//    }
//
//    @IBAction func touchThirdCard(_ sender: UIButton) {
//        print("zack——测试")
//        flibCard(withEmoji : "👿", on: sender)
//    }
//
//    @IBAction func touchFourthCard(_ sender: UIButton) {
//        print("zack——测试")
//        print("\(sender)")
//        flibCard(withEmoji : "😯", on: sender)
//    }
    
    
    @IBOutlet var touchCards: [UIButton]!
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        
//        let cardNumber = touchCards.index( of: sender)!
        if let cardNumber = touchCards.index( of: sender) {
            print("\(String(describing: cardNumber))")
            flibCard(withEmoji: emojis[cardNumber], on: sender)
        }else {
            print("没有选择的按钮")
        }

        
        
    }
    
    func flibCard(withEmoji emmoji:String, on button :UIButton) {
        flibCount += 1
       
        if button.currentTitle == emmoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }else {
            button.setTitle(emmoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

