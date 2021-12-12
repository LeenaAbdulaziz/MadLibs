//
//  SecondViewController.swift
//  MadLibs
//
//  Created by Linah abdulaziz on 08/05/1443 AH.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verb1TextField: UITextField!
    @IBOutlet weak var verb2TextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func SubmitButtonPressed(_ sender: UIButton) {
        
        if ((adjectiveTextField.text?.isEmpty)! && (verb1TextField.text?.isEmpty)! && (verb2TextField.text?.isEmpty)! && (nounTextField.text?.isEmpty)!){
            
            showAlert()
        }
        else{
      performSegue(withIdentifier: "unwindBack", sender: self)
        }
    }
    
    func showAlert(){
        
        let alt = UIAlertController( title: "", message:"one or more feild is empty" ,preferredStyle: UIAlertController.Style.alert)
        
        
        self.present(alt, animated: true, completion: nil)
    }
    
}
