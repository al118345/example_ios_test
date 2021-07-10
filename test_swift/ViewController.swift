//
//  ViewController.swift
//  test_swift
//
//  Created by Ruben Perez Ibañez on 07/07/2021.
//  Copyright © 2021 organización_inventada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var text_field: UITextField!
    @IBOutlet var button: UIButton!

    @IBAction func esDecimal_presion(_ sender: Any) {
        print(esDecimal(posible_decimal: text_field.text ?? "0"))

        if esDecimal(posible_decimal: text_field.text ?? "0")
        {
            text_field.text = "Yes"
        }else{
            text_field.text = "No"
        }
    
    }
    
    
    func esDecimal(posible_decimal: String) -> Bool {
        let num:Int? = Int(posible_decimal)
        return num != nil;
    }
    
    func Parse()
       {
           Thread.sleep(forTimeInterval: 2)
       }


}

