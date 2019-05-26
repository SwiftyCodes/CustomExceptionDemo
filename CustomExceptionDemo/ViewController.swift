//
//  ViewController.swift
//  CustomExceptionDemo
//
//  Created by Anurag Kashyap on 26/05/19.
//  Copyright © 2019 Anurag Kashyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailIDTextField:UITextField!
    @IBOutlet weak var paswordTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonAction(_ sender:UIButton) {
        do{
                try login()
        }catch LoginCustomError.invalidForm {
            print("Please fill all entries")
        }catch LoginCustomError.invalidEmailID {
            print("Email ID is not valid")
        }catch LoginCustomError.invalidPassword {
            print("Pasword is not valid")
        }catch {
            print("Login had an error!")
        }
    }
    
    func login() throws {
        let email = emailIDTextField.text
        let password = paswordTextField.text
        
        if (email?.isEmpty)! || (password?.isEmpty)! {
            throw LoginCustomError.invalidForm
        }
        if !Validation.isValidEmail(testStr: email!){
            throw LoginCustomError.invalidEmailID
        }
        if (password?.count)!<8 {
            throw LoginCustomError.invalidPassword
        }
        
        print("Success!")
    }
}

