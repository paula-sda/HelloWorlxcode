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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = item?.name ?? "Sin nombre"
        
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
