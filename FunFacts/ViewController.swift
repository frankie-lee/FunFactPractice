//
//  ViewController.swift
//  FunFacts
//
//  Created by Frank Lee on 2014-10-17.
//  Copyright (c) 2014 franklee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factLabel: UILabel!
    
    @IBOutlet weak var newFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        factLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newFactButtonPressed(sender: UIButton) {
        
        var randomColor = colorWheel.randomColor()
        
        view.backgroundColor = randomColor
        newFactButton.tintColor = randomColor
        factLabel.text = factBook.randomFact()
    }
}

