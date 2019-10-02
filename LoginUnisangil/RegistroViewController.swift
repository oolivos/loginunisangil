//
//  RegistroViewController.swift
//  LoginUnisangil
//
//  Created by Oscar  Olivos on 10/1/19.
//  Copyright © 2019 Oscar  Olivos. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtApellido: UITextField!
    
    @IBOutlet weak var txtEdad: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnGuardar(_ sender: UIButton) {
        
    }
    
    func showAlert(message : String, success : Bool) {
        let action = UIAlertAction(title: "Ir a Home", style: UIAlertAction.Style.default) { (action: UIAlertAction) in
            let registro = self.storyboard?.instantiateViewController(identifier: "registro") as! RegistroViewController
            self.navigationController?.pushViewController(registro, animated: true)
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
