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
        print("ver tarjeta cumple")
        self.performSegue(withIdentifier: HelloWorldSegue, sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.placeholder = "Type your name here..."
        texto.text = "Hellow, type your name below"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == HelloWorldSegue {
            let destinationVC = segue.destination as! HelloWorldViewController
        }
        
        
    }
}
