//
//  secondViewController.swift
//  HelloWorld
//
//  Created by Student on 7/10/25.
//

import UIKit

class birthdayViewController: UIViewController {

    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        texto.text = String(localized: "felicitacion")
    }
    

}
