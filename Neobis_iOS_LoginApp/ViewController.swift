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
        iv.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
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
        textField.snp.makeConstraints { make in
            make.width.equalTo(280)
            make.height.equalTo(64)
        }
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
        textField.snp.makeConstraints { make in
            make.width.equalTo(280)
            make.height.equalTo(64)
        }
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
        button.snp.makeConstraints { make in
            make.width.equalTo(280)
            make.height.equalTo(64)
        }
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
        
        let centerStackView = UIStackView(arrangedSubviews: [userNameTextField, passwordTextField,loremIpsum])
        centerStackView.axis = .vertical
        centerStackView.spacing = 32
        centerStackView.alignment = .center
        
        let botomStackView = UIStackView(arrangedSubviews: [signInButton, loremIpsum2])
        botomStackView.axis = .vertical
        botomStackView.spacing = 16
        botomStackView.alignment = .center

        
        let overallStackView = UIStackView(arrangedSubviews: [imageView, centerStackView, botomStackView])
        overallStackView.axis = .vertical
        overallStackView.spacing = 64
        overallStackView.alignment = .center

        
        view.addSubview(overallStackView)
        overallStackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }


}

