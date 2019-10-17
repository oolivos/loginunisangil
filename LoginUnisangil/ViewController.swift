//
//  ViewController.swift
//  LoginUnisangil
//
//  Created by Oscar  Olivos on 9/25/19.
//  Copyright © 2019 Oscar  Olivos. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = Auth.auth().currentUser
        if user != nil {
            let home = self.storyboard?.instantiateViewController(identifier: "home") as! HomeViewController
            self.navigationController?.pushViewController(home, animated: true)
        }
    }


}

