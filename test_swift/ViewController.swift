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

    func esDecimal(posible_decimal: String) -> Bool {
        let num:Int? = Int(posible_decimal)
        return num != nil;
    }


}

