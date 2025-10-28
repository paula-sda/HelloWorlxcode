//
//  NewITemsViewController.swift
//  HelloWorld
//
//  Created by Student on 21/10/25.
//

import UIKit


protocol AddShopItemDelegate{
    func addShopItem(item: ShopItem)
    
}
class NewITemsViewController: UIViewController {
    
    var delegate : AddShopItemDelegate? = nil
    @IBOutlet weak var nameItem: UITextField!
    @IBOutlet weak var cantidadItem: UITextField!
    @IBOutlet weak var botonSave: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       nameItem.placeholder = String(localized: "ItemPlaceholder")
        cantidadItem.placeholder = String(localized: "cantidadPlaceholder")
        botonSave.setTitle(String(localized: "botonSave"), for: .normal)
    }
    
    @IBAction func saveItem(_ sender: Any) {
        
        // Aseguramos que el usuario haya escrito nombre y cantidad
            guard let name = nameItem.text, !name.isEmpty,
                  let quantity = cantidadItem.text, let quantity = Int(quantity) else {
                // Si algo falla, puedes mostrar un alert o simplemente salir
                print(String(localized: "alerta"))
                return
            }
        //Aquí creas el nuevo ShopItem con los datos del usuario
                let newItem = ShopItem(name: name, quantity: quantity)
                
                //Y aquí va tu línea (la importante)
                self.delegate?.addShopItem(item: newItem)
                
                //Finalmente cierras la pantalla modal
                dismiss(animated: true, completion: nil)
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
