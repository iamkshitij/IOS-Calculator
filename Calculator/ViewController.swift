//
//  ViewController.swift
//  Calculator
//
//  Created by kshitij mudgal on 26/08/17.
//  Copyright © 2017 zappby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

          @IBOutlet weak var label: UILabel!
          var numberOnScreen : Double = 0;
          var prevNumber : Double = 0;
          var performingMaths = false;
          var operation = 0;
          
          
          @IBAction func numbers(_ sender: UIButton) {
                    if performingMaths == true{
                              label.text=String(sender.tag-1)
                              numberOnScreen = Double(label.text!)!
                              performingMaths = false;
                    }else{
                              label.text = label.text! + String(sender.tag-1)
                              numberOnScreen = Double(label.text!)!
                    }
          }
          
          
          @IBAction func buttons(_ sender: UIButton) {
                              
                    if label.text != "" && sender.tag != 20 && sender.tag != 12{
                              prevNumber = Double(label.text!)!
                              if sender.tag == 13 // divide
                              {
                                label.text = "/"
                              } else if sender.tag == 14 // multiply
                              {
                                label.text = "x"
                              } else if sender.tag == 15 // add
                              {
                                label.text = "+"
                              } else if sender.tag == 16 // substact
                              {
                                label.text = "-"
                              }
                              operation = sender.tag
                              performingMaths = true;
                    }
                    else if sender.tag == 12{
                              if operation == 13 {
                                        label.text = String(prevNumber / numberOnScreen)
                              }
                              else  if operation == 14 {
                                        label.text = String(prevNumber * numberOnScreen)
                              }
                              else if operation == 15 {
                                        label.text = String(prevNumber + numberOnScreen)
                              }
                              else if operation == 16 {
                                        label.text = String(prevNumber - numberOnScreen)
                              }
                    }
                    else if sender.tag == 20{
                              label.text = "0";
                              numberOnScreen = 0;
                              prevNumber = 0;
                              operation = 0;
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

