//
//  ViewController.swift
//  Neobis_iOS_LoginApp
//
//  Created by Тагай Абдылдаев on 3/4/23.
//

import UIKit

class MainViewController: UIViewController {
    
    let imageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "open-mail")
        return iv
        
    }()
    
    let userNameTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Username"
        textField.textColor = .white
        textField.backgroundColor = .gray
        textField.layer.cornerRadius = 16
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Password"
        textField.textColor = .white
        textField.backgroundColor = .gray
        textField.layer.cornerRadius = 16
        return textField
    }()
    
    let loremIpsum: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum"
        label.textColor = .white
        return label
    }()
    
    let SignInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    
    let loremIpsum2: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum"
        label.textColor = .white
        return label
    }()



    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
    
    }


}

