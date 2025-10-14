//
//  EscribirNombreViewController.swift
//  HelloWorld
//
//  Created by paula saenz on 11/10/25.
//

import UIKit

class EscribirNombreViewController: UIViewController {
    
    let HelloWorldSegue = "showHelloWorld"
    
    @IBOutlet weak var texto: UILabel!

    @IBOutlet weak var username: UITextField!
    
    @IBAction func clickdone(_ sender: UIButton) {
        if username.text!.isEmpty{
            let alert = UIAlertController(title: "Error", message: "Debes escribir un nombre", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{print("ver tarjeta cumple")
            self.performSegue(withIdentifier: HelloWorldSegue, sender: self)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.placeholder = "Type your name here..."
        texto.text = "Hellow, type your name below"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == HelloWorldSegue {
            let destinationVC = segue.destination as! HelloWorldViewController
            destinationVC.username = username.text ?? ""
            
        }
        
    }
}
