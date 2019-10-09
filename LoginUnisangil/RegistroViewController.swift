//
//  RegistroViewController.swift
//  LoginUnisangil
//
//  Created by Oscar  Olivos on 10/1/19.
//  Copyright © 2019 Oscar  Olivos. All rights reserved.
//

import UIKit
import Firebase

class RegistroViewController: UIViewController {

    @IBOutlet weak var txtNombres: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnGuardar(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: txtEmail.text!, password: txtPassword.text!){response , error in
            if error != nil{
                self.showAlert(message: (error?.localizedDescription.description)!, success: false)
            }else{
                self.showAlert(message: "Usuario creado correctamente", success: true)
            }
        }
    }
    
    func showAlert(message : String, success : Bool) {
        let action = UIAlertAction(title: "Ir a Home", style: UIAlertAction.Style.default) { (action: UIAlertAction) in
            let home = self.storyboard?.instantiateViewController(identifier: "home") as! HomeViewController
            self.navigationController?.pushViewController(home, animated: true)
        }
        let alert = UIAlertController(title: "Registro", message: message, preferredStyle: UIAlertController.Style.alert)
        if success {
            alert.addAction(action)
        }
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
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
