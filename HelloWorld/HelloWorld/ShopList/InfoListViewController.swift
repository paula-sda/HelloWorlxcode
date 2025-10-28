//
//  InfoListViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class InfoListViewController: UIViewController {
    //var itemName: String?
    var item: ShopItem?
    @IBOutlet weak var cantidad: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = item?.name ?? String(localized: "sinNombre")
        
        // Mostrar la cantidad solo si es mayor a 0
        if let quantity = item?.quantity, quantity > 0 {
            cantidad.text = String(localized: "cantidad") + ": " +  String(quantity)
            cantidad.isHidden = false
        } else {
            cantidad.isHidden = true
        }
        
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
