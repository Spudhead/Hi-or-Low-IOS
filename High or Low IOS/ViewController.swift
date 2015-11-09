//
//  ViewController.swift
//  High or Low IOS
//
//  Created by Glenn Hancock on 11/8/15.
//  Copyright © 2015 Glenn Hancock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LowTF: UITextField!
    @IBOutlet weak var HiTF: UITextField!
    @IBOutlet weak var GuessTF: UITextField!
    @IBOutlet weak var MesageWindow: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newGameBttn(sender: UIButton) {
     
        
    }
    

    @IBAction func GoBttn(sender: UIButton) {
        
        
      func randomIntBetween(low:Int, high:Int) -> Int {
            let range = high - (low - 1)
            return (Int(arc4random()) % range) + (low)
        }
        
        let guess = Int(GuessTF.text!)
        var turn = 1
        let hi = Int(HiTF.text!)
        let low = Int(LowTF.text!)
        let answer = randomIntBetween(low!, high: hi!)
        
        //        while(guess != answer) {
            if guess < answer {
                MesageWindow.text = MesageWindow.text + "Higher!"
            } else if guess > answer {
                MesageWindow.text = MesageWindow.text + "Lower!"
            } else {
                MesageWindow.text = MesageWindow.text + "EXACTLY!"
            }
              turn++
    }

    
   // }
}





