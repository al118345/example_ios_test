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
    
    func crearfichero(){
        // Write a local file in Documents folder with "doc.txt" filename.
     
        let path_bundle_image:String = Bundle.main.path(forResource: "Banana", ofType: "png")!

       
        let pathBase:String = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print("fkndssf")
        print(pathBase)
       let file = "file.txt" //this is the file. we will write to and read from it

        let text = "some text" //just a text

        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(file)

            //writing
            do {
                try text.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {/* error handling here */}

            //reading
            do {
                let text2 = try String(contentsOf: fileURL, encoding: .utf8)
                print(text2)
            }
            catch {/* error handling here */}
        }

        //let str_name:String = (url as NSString).lastPathComponent
        //let pathFile:String = "(pathBase)/doc.txt"
        //tData.write(toFile: pathFile, atomically: false)
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

