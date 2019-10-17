//
//  InicarSesionViewController.swift
//  LoginUnisangil
//
//  Created by Oscar  Olivos on 9/25/19.
//  Copyright © 2019 Oscar  Olivos. All rights reserved.
//

import UIKit
import Firebase

class InicarSesionViewController: UIViewController {

    @IBOutlet weak var txtUsuario: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnIniciarIniciarSesion(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: txtUsuario.text!, password: txtPassword.text!, completion: { (response, error) in
            if error == nil{
                let home = self.storyboard?.instantiateViewController(identifier: "home") as! HomeViewController
                self.navigationController?.pushViewController(home, animated: true)
            }else{
                self.showModal(message: (error?.localizedDescription.description)!)
            }
            
        })
        
        
        
        /*
        if txtUsuario.text == "admin" && txtPassword.text == "123" {
            //showModal(message: "Bienvenido \(txtUsuario.text!)")
            let home = storyboard?.instantiateViewController(identifier: "home") as! HomeViewController
            navigationController?.pushViewController(home, animated: true)
            
        }else{
            showModal(message: "Error al iniciar Sesión")
        }*/
    }
    
    func showModal(message : String) {
        let alert = UIAlertController(title: "Inicio de Sesion", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
