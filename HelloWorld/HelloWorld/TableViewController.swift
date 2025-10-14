//
//  TableViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit
struct ShopItem {
    let name: String
    var quantity: Int
}
class TableViewController: UIViewController {
    
    let DetailSegue = "showDetailSegue"
    var shopItems = [ShopItem]()
    var selectedItem: ShopItem? = nil
    
    @IBOutlet weak var table: UITableView!
    
    //let shopItems = ["Pasta", "Bread", "Sugar", "Coffee"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      shopItems = getShopItems()
        // Do any additional setup after loading the view.
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DetailSegue {
            let destinationVC = segue.destination as! InfoListViewController
            destinationVC.itemName = sender as? String
        }
    }
}*/
    // Preparamos el segue para pasar el ShopItem al siguiente controlador
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == DetailSegue {
                if let destinationVC = segue.destination as? InfoListViewController{
                   destinationVC.item = self.selectedItem
                }
            }
        }
    }

    
    extension TableViewController: UITableViewDataSource, UITableViewDelegate {
        
        private func getShopItems() -> [ShopItem] {
            return [ShopItem(name: "Pasta",quantity: 2), ShopItem(name: "Bread",quantity: 1), ShopItem(name: "Sugar",quantity: 3), ShopItem(name: "Coffee",quantity: 1)]
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.shopItems.count
            
        }
        
        /*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellIdentifier = "Cell"
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ShopItemTableViewCell else {
                return UITableViewCell()
            }
            
            cell.texto.text = self.shopItems[indexPath.row]
            return cell
            //codigo de antes
            /*let cell = table.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = self.shopItems[indexPath.row]
            return cell*/
            
        }*/
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

                let cell = table.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                let item = shopItems[indexPath.row]
                cell.textLabel?.text = "\(item.name) - Qty: \(item.quantity)"
                return cell
            }
            
        
        /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            self.table.deselectRow(at: indexPath, animated: true)
            print("You tapped on \(self.shopItems[indexPath.row]) row")
            
            performSegue(withIdentifier: "showDetailSegue", sender: shopItems[indexPath.row])
            
            
        }
        */
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            tableView.deselectRow(at: indexPath, animated: true)
            selectedItem = shopItems[indexPath.row]
            print("Has pulsado: \(selectedItem!.name) con cantidad: \(selectedItem!.quantity)")
            performSegue(withIdentifier: DetailSegue, sender: self)
        }

       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
            return UITableView.automaticDimension
        }
        
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    


