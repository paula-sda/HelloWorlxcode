//
//  TableViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class TableViewController: UIViewController {
    
    let DetailSegue = "showDetailSegue"
    
    @IBOutlet weak var table: UITableView!
    
    let shopItems = ["Pasta", "Bread", "Sugar", "Coffee"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DetailSegue {
            let destinationVC = segue.destination as! InfoListViewController
            destinationVC.itemName = sender as? String
        }
    }
}
    
    extension TableViewController: UITableViewDataSource, UITableViewDelegate {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.shopItems.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = table.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = self.shopItems[indexPath.row]
            return cell
            
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            self.table.deselectRow(at: indexPath, animated: true)
            print("You tapped on \(self.shopItems[indexPath.row]) row")
            
            performSegue(withIdentifier: "showDetailSegue", sender: shopItems[indexPath.row])
            
            
        }
        
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    


