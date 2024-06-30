//
//  ViewController.swift
//  A simple App
//
//  Created by Tzu ning Lo on 2024/6/30.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var answer: UITextView!
    @IBOutlet var background: UIView!
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        let questionNumber = Int.random(in: 0...6)
        
        let textContent = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
        ]
        
        answer.text = textContent[questionNumber]
        
        let colorNumber = Int.random(in: 0...6)
        let colors = [
                    UIColor(red: 85/255, green: 91/255, blue: 110/255, alpha: 1),
                    UIColor(red: 137/255, green: 176/255, blue: 174/255, alpha: 1),
                    UIColor(red: 190/255, green: 227/255, blue: 219/255, alpha: 1),
                    UIColor(red: 247/255, green: 178/255, blue: 173/255, alpha: 1),
                    UIColor(red: 255/255, green: 214/255, blue: 186/255, alpha: 1),
                    UIColor(red: 254/255, green: 223/255, blue: 225/255, alpha: 1),
                    UIColor(red: 255/255, green: 186/255, blue: 132/255, alpha: 1)
        ]
        
        background.backgroundColor = colors[colorNumber]
    }
    
}

