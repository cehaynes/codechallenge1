//
//  ViewController.swift
//  codeChallenge
//
//  Created by Apple on 6/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var password = "klossysaurus"
    

    @IBAction func submitBtn(_ sender: Any) {
        if userAnswer.text == password{
            correctLabel.isHidden = false
            incorrectLabel.isHidden = true
        }else{
            incorrectLabel.isHidden = false
            correctLabel.isHidden = true
        }
        questionMark.isHidden = true
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        correctLabel.isHidden = true
        incorrectLabel.isHidden = true
        userAnswer.text = ""
        questionMark.isHidden = false

    }
    
    @IBOutlet weak var questionMark: UILabel!
    
    @IBOutlet weak var userAnswer: UITextField!
    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var incorrectLabel: UILabel!
}

