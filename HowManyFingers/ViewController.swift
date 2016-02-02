//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Simranjit Kaur on 2/02/2016.
//  Copyright © 2016 Simranjit Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingersImage: UIImageView!
    @IBOutlet weak var fingerNumber: UITextField!
    @IBOutlet weak var ActualResult: UILabel!
    @IBAction func guessDone(sender: AnyObject) {
        
        let numberOfFingers = String(arc4random_uniform(6))
        
        print(numberOfFingers)
        
       if fingerNumber.text == nil || fingerNumber.text == ""{
          
            ActualResult.text = "Please enter a number"
       }else {
        
        if numberOfFingers == fingerNumber.text{
         
            ActualResult.text = "You are right"
        }
        else{
            ActualResult.text = "Wrong! It was a " + numberOfFingers
        }
        
        if numberOfFingers == "0"{
            self.fingersImage.image = UIImage(named: "NoFinger.jpg")!
        }
        else if numberOfFingers == "1"{
            self.fingersImage.image = UIImage(named: "OneFinger.jpg")!
        }
        else if numberOfFingers == "2"{
            self.fingersImage.image = UIImage(named: "TwoFinger.jpg")!
        }
        else if numberOfFingers == "3"{
            self.fingersImage.image = UIImage(named: "ThreeFinger.jpg")!
        }
        else if numberOfFingers == "4"{
            self.fingersImage.image = UIImage(named: "FourFinger.jpg")!
        }
        else {
            self.fingersImage.image = UIImage(named: "FiveFinger.jpg")!
        }
        
    }
    
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

