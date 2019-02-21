//
//  ViewController.swift
//  BCrypt
//
//  Created by Alexander Berkunov on 02/21/2019.
//  Copyright (c) 2019 Alexander Berkunov. All rights reserved.
//

import UIKit
import BCrypt

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let password = "1122"
        let salt = try! BCrypt.Salt()
        let hashed = try? BCrypt.Hash(password, salt: salt)
        print(hashed!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

