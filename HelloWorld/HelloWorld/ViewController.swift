//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    let BirthdaySegue = "showCumpleSegue"
    

    @IBAction func clickCumple(_ sender: UIButton) {
        print("ver tarjeta cumple")
        self.performSegue(withIdentifier: BirthdaySegue, sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == BirthdaySegue {
            let destinationVC = segue.destination as! birthdayViewController
        
        }
       
    }

    
    
}

