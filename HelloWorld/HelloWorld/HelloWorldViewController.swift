//
//  HelloWorldViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class HelloWorldViewController: UIViewController {
    var username: String = ""
    
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var img1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texto.text = "Hello \(username), Welcome to my app"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
