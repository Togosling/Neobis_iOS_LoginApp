//
//  ViewController.swift
//  Neobis_iOS_LoginApp
//
//  Created by Тагай Абдылдаев on 3/4/23.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "open-mail")
        return iv
        
    }()
    
    let userNameTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.font = .systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .center
        textField.backgroundColor = .gray
        textField.layer.cornerRadius = 32
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.font = .systemFont(ofSize: 20)
        textField.textColor = .white
        textField.textAlignment = .center
        textField.backgroundColor = .gray
        textField.layer.cornerRadius = 32
        return textField
    }()
    
    let loremIpsum: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum"
        label.textColor = .white
        return label
    }()
    
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        button.setTitleColor(UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1), for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 32
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
    
        view.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        setupConstraints()
        buttonPressed()
    }
    
    fileprivate func buttonPressed() {
        signInButton.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)
    }
    
    @objc func handleSignIn() {
        print("Username: \(userNameTextField.text ?? ""), Password: \(passwordTextField.text ?? "")")
    }
    
    fileprivate func setupConstraints() {
        
        self.view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(flexibleHeight(to: 200))
            make.width.equalTo(flexibleWidth(to: 150))
            make.height.equalTo(flexibleWidth(to: 150))
        }
        self.view.addSubview(userNameTextField)
        userNameTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(flexibleHeight(to: 64))
            make.width.equalTo(flexibleWidth(to: 280))
            make.height.equalTo(flexibleHeight(to: 64))
        }
        
        self.view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userNameTextField.snp.bottom).offset(flexibleHeight(to: 20))
            make.width.equalTo(flexibleWidth(to: 280))
            make.height.equalTo(flexibleHeight(to: 64))
        }
        self.view.addSubview(loremIpsum)
        loremIpsum.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(flexibleHeight(to: 20))
        }
        self.view.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loremIpsum.snp.bottom).offset(flexibleHeight(to: 64))
            make.width.equalTo(flexibleWidth(to: 280))
            make.height.equalTo(flexibleHeight(to: 64))
            
        }
        self.view.addSubview(loremIpsum2)
        loremIpsum2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInButton.snp.bottom).offset(flexibleHeight(to: 20))
        }
        
    }
}

