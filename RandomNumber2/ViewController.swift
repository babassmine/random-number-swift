//
//  ViewController.swift
//  RandomNumber2
//
//  Created by Abass Sesay on 11/14/15.
//  Copyright © 2015 Abass Sesay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var timeL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeL.text = "\(NSDate())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Generate(sender: AnyObject) {
        let generated = (random() % 101)
        output.text = "\(generated)"
    }
    
    @IBAction func Seed(sender: AnyObject) {
        srandom(CUnsignedInt(time(nil)))
        output.text = "Generator seeded"
    }
    @IBAction func update(sender: AnyObject) {
        timeL.text = "\(NSDate())"
    }
}

