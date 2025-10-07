//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class ViewController: UIViewController {
    let flechasegue = "flecha"
    
    @IBOutlet weak var imgPrincipal: UIImageView!
    @IBOutlet weak var felicitacion: UILabel!
    @IBOutlet weak var imagen2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Felicitación cumple"
        felicitacion.text = "HAPPY BIRTHDAY !!!"
    }
    
    @IBAction func botonClicar(_ sender: UIButton) {
        print("boton clicado")
        self.performSegue (withIdentifier: flechasegue, sender: self)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == flechasegue{
            let destination = segue.destination as! secondViewController
            destination.username = "Paula"
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

    
    
}

