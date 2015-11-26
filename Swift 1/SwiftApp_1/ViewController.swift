//
//  ViewController.swift
//  SwiftApp_1
//
//  Created by Yifan Fan on 27/11/2015.
//  Copyright © 2015 Yifan Fan. All rights reserved.
//
//  1. design the UI
//  2. build the connect between storyboard and view controller
//  3. if rename the UI connection ,remember to delete it
//  4. remember to give enough space to UI label


import UIKit

class ViewController: UIViewController {

    var colorChangeNum = 0
    var clickNum = 0
    @IBOutlet weak var myLabel: UILabel!
    
   
    @IBAction func changeText(sender: AnyObject) {
        myLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        myLabel.numberOfLines = 3
        clickNum++
        
        myLabel.text = "Hi Ivan!You clicked \(clickNum) times!"
    }
    
  
    @IBAction func changeColor(sender: AnyObject) {
        colorChangeNum++
        if colorChangeNum == 1 {
             myLabel.textColor=UIColor.redColor()
        }
        else if colorChangeNum == 2{
            myLabel.textColor=UIColor.blueColor()
        }
        else if colorChangeNum == 3{
            myLabel.textColor=UIColor.blackColor()
            colorChangeNum = 0
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

