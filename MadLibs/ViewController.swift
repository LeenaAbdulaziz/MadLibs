//
//  ViewController.swift
//  MadLibs
//
//  Created by Linah abdulaziz on 08/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var summeryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        let source = seg.source as! SecondViewController
        
        summeryLabel.text = "We are having a perfectly \(source.adjectiveTextField.text!) right now. Later we will \(source.verb1TextField.text!) and \(source.verb2TextField.text!) in the \(source.nounTextField.text!)."
    }
    
    
    


}

