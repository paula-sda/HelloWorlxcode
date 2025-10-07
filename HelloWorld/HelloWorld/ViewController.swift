//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPrincipal: UIImageView!
    @IBOutlet weak var felicitacion: UILabel!
    @IBOutlet weak var imagen2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Felicitación cumple"
        felicitacion.text = "HAPPY BIRTHDAY !!!"
        
    }
}

