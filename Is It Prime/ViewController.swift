//
//  ViewController.swift
//  Is It Prime
//
//  Created by Nathanial L. McConnell on 9/17/14.
//  Copyright (c) 2014 Nathanial L. McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var number: UITextField!
  @IBOutlet weak var message: UILabel!
  
  @IBAction func buttonPressed(sender: AnyObject) {
    println(number.text)
    
    var numberAsInteger = number.text.toInt()
    
    if ((numberAsInteger) == nil) {
      message.text = "Please enter a number."
    } else {
      if (numberAsInteger < 1) {
        message.text = "Please enter a positive number"
      } else {
        var isPrime = true
        if (numberAsInteger == 1) {
          isPrime = false
        } else {
          for var i = 2; i < numberAsInteger; ++i {
            if (numberAsInteger! % i == 0) {
              isPrime = false
            }
          }
        }
        var answer = (isPrime) ? "prime." : "not prime."
        message.text = "\(number.text) is \(answer)"
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

