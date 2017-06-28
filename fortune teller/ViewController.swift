//
//  ViewController.swift
//  fortune teller
//
//  Created by Abidi Family on 6/23/17.
//  Copyright © 2017 Abidi Family. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//--------------------------------------------------------------------------------------------------------
// outlets
//--------------------------------------------------------------------------------------------------------
    @IBOutlet weak var theQuesion: UITextField!
    @IBOutlet weak var theAnswer: UILabel!
    @IBOutlet weak var theComent: UITextView!
//--------------------------------------------------------------------------------------------------------
// override functions
//--------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
//--------------------------------------------------------------------------------------------------------
// the yes or no quesion button
//--------------------------------------------------------------------------------------------------------
    @IBAction func asker(_ sender: Any) {
        
        let askergen = arc4random_uniform(5)
        theAnswer.text = String(askergen)
        theAnswer.backgroundColor = UIColor.blue
        
        self.asker()
        
        }
    
    func asker(){
        
        if theAnswer.text == "0"{
            theAnswer.text = "Yes"
            theComent.text = "You Wont Be So Lucky Next Time"
        }
        if theAnswer.text == "1"{
            theAnswer.text = "No"
             theComent.text = "Well That Just Sucks"
        }
        if theAnswer.text == "2"{
            theAnswer.text = "Mabye"
            theComent.text = "Im Not Telling You Anything"
        }
        if theAnswer.text == "3"{
            theAnswer.text = "Not Likely"
            theComent.text = "Better Luck Next Time"
        }
        if theAnswer.text == "4"{
            theAnswer.text = "Probably"
             theComent.text = "Lucky For You"
        }
    }
//--------------------------------------------------------------------------------------------------------
// the true or false quesion button
//--------------------------------------------------------------------------------------------------------
    @IBAction func asker2(_ sender: Any) {
        
        let asker2gen = arc4random_uniform(2)
        theAnswer.text = String(asker2gen)
        theAnswer.backgroundColor = UIColor.red
        
        self.asker2()
        
        }
    
    func asker2(){
        
        if theAnswer.text == "0"{
            theAnswer.text = "True"
                theComent.text = "You Finnaly Won A Bet, Great"
        }
        if theAnswer.text == "1"{
            theAnswer.text = "False"
                theComent.text = "I Bet You Lost A Bet"
        }
    }
//--------------------------------------------------------------------------------------------------------
// the reset button
//--------------------------------------------------------------------------------------------------------
    @IBAction func reset(_ sender: Any) {
        
        theAnswer.text = "Waiting..."
        theQuesion.text = ""
        theComent.text = "Hurry Up, Type Your Quesion"
        theAnswer.backgroundColor = UIColor.lightGray
        }
//--------------------------------------------------------------------------------------------------------
// the year in the future button
//--------------------------------------------------------------------------------------------------------
    @IBAction func asker3(_ sender: Any) {
        let asker3gen = arc4random_uniform(11)
        theAnswer.text = String(asker3gen)
        theAnswer.backgroundColor = UIColor.green
        
        self.asker3()
    
        }
    
    func asker3(){
        if theAnswer.text == "0"{
            theAnswer.text = "2020"
                theComent.text = ""
        }
        if theAnswer.text == "1"{
            theAnswer.text = "2036"
                theComent.text = ""
        }
        if theAnswer.text == "2"{
            theAnswer.text = "2051"
                theComent.text = ""
        }
        if theAnswer.text == "3"{
            theAnswer.text = "2047"
                theComent.text = ""
        }
        if theAnswer.text == "4"{
            theAnswer.text = "2028"
                theComent.text = ""
        }
        if theAnswer.text == "5"{
            theAnswer.text = "2100"
                theComent.text = ""
        }
        if theAnswer.text == "6"{
            theAnswer.text = "In A Year"
                theComent.text = ""
        }
        if theAnswer.text == "7"{
            theAnswer.text = "2055"
                theComent.text = ""
        }
        if theAnswer.text == "8"{
            theAnswer.text = "2118"
                theComent.text = ""
        }
        if theAnswer.text == "9"{
            theAnswer.text = "2031"
                theComent.text = ""
        }
        if theAnswer.text == "10"{
            theAnswer.text = "2029"
                theComent.text = ""
        }
    }
//--------------------------------------------------------------------------------------------------------
// the honest or dishonest button
//--------------------------------------------------------------------------------------------------------
    @IBAction func asker4(_ sender: Any) {
        let asker4gen = arc4random_uniform(2)
        theAnswer.text = String(asker4gen)
        theAnswer.backgroundColor = UIColor.purple
        
        self.asker4()
        
    }
    
    func asker4(){
        if theAnswer.text == "0"{
            theAnswer.text = "Honest"
                theComent.text = "Still, Trust me, Im More Honest"
        }
        if theAnswer.text == "1"{
            theAnswer.text = "Dishonest"
                theComent.text = "There, There, Im Still Honest"
        }
    }
//--------------------------------------------------------------------------------------------------------
}
