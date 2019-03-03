//
//  RegisterVC.swift
//  eComm
//
//  Created by Abins Musthafa on 03/03/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {

    @IBOutlet weak var confirmPasswordImgCheck: UIImageView!
    @IBOutlet weak var passwordImgCheck: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtUser: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtConfirmPassword.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        txtPassword.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        
        guard let passTxt = txtPassword.text else {
            return
        }
        
        if textField == txtConfirmPassword{
            passwordImgCheck.isHidden = false
            confirmPasswordImgCheck.isHidden = false
        }
        else{
            if passTxt.isEmpty{
                passwordImgCheck.isHidden = true
                confirmPasswordImgCheck.isHidden = true
                txtConfirmPassword.text = ""
            }
        }
        if txtConfirmPassword.text == txtPassword.text{
            passwordImgCheck.image = UIImage(named: AppImg.GreenImg)
            confirmPasswordImgCheck.image = UIImage(named: AppImg.GreenImg)
        }
        else{
            passwordImgCheck.image = UIImage(named: AppImg.RedImg)
            confirmPasswordImgCheck.image = UIImage(named: AppImg.RedImg)
        }
    }
    
    
    
    
    @IBAction func registerClickek(_ sender: UIButton) {
        
        
        guard let email = txtEmail.text ,email.isNotEmpty,
        let username = txtUser.text ,username.isNotEmpty,
        let password = txtPassword.text,password.isNotEmpty else{return}
        
        activityIndicator.startAnimating()
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
           
            
             if let error = error{
                debugPrint(error.localizedDescription)
                return
            }
            self.activityIndicator.startAnimating()
            print("Created Sucess")
            
        } //Auth Closure End
        
        
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
