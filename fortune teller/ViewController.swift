//
//  ViewController.swift
//  fortune teller
//
//  Created by Abidi Family on 6/23/17.
//  Copyright © 2017 Abidi Family. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theQuesion: UITextField!
    @IBOutlet weak var theAnswer: UILabel!
    @IBOutlet weak var theComent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func asker(_ sender: Any) {
        
        let askergen = arc4random_uniform(5)
        theAnswer.text = String(askergen)
        
        self.theComment()
        self.asker()
        
        }
    
    
    func asker(){
        
        if theAnswer.text == "0"{
            theAnswer.text = "Yes"
                theAnswer.backgroundColor = UIColor.blue
        }
        if theAnswer.text == "1"{
            theAnswer.text = "No"
                theAnswer.backgroundColor = UIColor.blue
        }
        if theAnswer.text == "2"{
            theAnswer.text = "Mabye"
                theAnswer.backgroundColor = UIColor.blue
        }
        if theAnswer.text == "3"{
            theAnswer.text = "Not Likely"
                theAnswer.backgroundColor = UIColor.blue
        }
        if theAnswer.text == "4"{
            theAnswer.text = "Probably"
                theAnswer.backgroundColor = UIColor.blue
        }
    }

    
    func theComment(){
        if theAnswer.text == "0"{
            theComent.text = "You Wont Be So Lucky Next Time"
        }
        if theAnswer.text == "1"{
            theComent.text = "Well That Just Sucks"
        }
        if theAnswer.text == "2"{
            theComent.text = "Im Not Telling You Anything"
        }
        if theAnswer.text == "3"{
            theComent.text = "Better Luck Next Time"
        }
        if theAnswer.text == "4"{
            theComent.text = "Lucky For You"
        }
        
    }

    @IBAction func asker2(_ sender: Any) {
        
        let asker2gen = arc4random_uniform(2)
        theAnswer.text = String(asker2gen)
        
        self.theComent2()
        self.asker2()
        
    }
    
    func asker2(){
        if theAnswer.text == "0"{
            theAnswer.text = "True"
        }
        if theAnswer.text == "1"{
            theAnswer.text = "False"
        }
    }
    
    func theComent2(){
        if theAnswer.text == "0"{
            theComent.text = "You Finnaly Won A Bet, Great"
                theAnswer.backgroundColor = UIColor.red
        }
        if theAnswer.text == "1"{
            theComent.text = "I Bet You Lost A Bet"
                theAnswer.backgroundColor = UIColor.red
        }
    }
 
    @IBAction func reset(_ sender: Any) {
        
        theAnswer.text = "Waiting..."
        theQuesion.text = ""
        theComent.text = "Hurry Up, Type Your Quesion"
        theAnswer.backgroundColor = UIColor.lightGray
        
    }
    

}

