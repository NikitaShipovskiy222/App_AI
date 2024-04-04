//
//  ViewController.swift
//  practica
//
//  Created by Nikita Shipovskiy on 04/04/2024.
//

import UIKit


class ViewController: UIViewController {

    private lazy var welcomeLabel: UILabel = {
        $0.text = "Welcome to"
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        $0.textColor = .black
        return $0
    }(UILabel(frame: CGRect(x: 20, y: 75, width: view.frame.width - 163, height: 25)))
    
    private lazy var steveLabel: UILabel = {
        $0.text = "Steve"
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        $0.textColor = .mainGreen
        return $0
    }(UILabel(frame: CGRect(x: 165, y: 75, width: view.frame.width - 163, height: 25)))
    
    
    private lazy var yourNameLabel = setYourData(originaY: 135, width: view.frame.width - 300, height: 10, name: "Your name")
    
    private lazy var yourEmailLabel = setYourData(originaY: 222, width: view.frame.width - 300, height: 10, name: "Your email")
    
    private lazy var yourPasscode = setYourData(originaY: 309, width: view.frame.width - 300, height: 10, name: "Your password")
    
    
    lazy var nameTextFiled = setInfoTextFiled(originaY: 155)
    
    lazy var emailTextFiled = setInfoTextFiled(originaY: 242)

    lazy var passcodeTextFiled = setInfoTextFiled(originaY: 329)
    
    private lazy var palckaRightLabel: UILabel = {
        $0.backgroundColor = .lightGray
        return $0
    }(UILabel(frame: CGRect(x: 20, y: 452, width: view.frame.width - 250, height: 1)))

    
    private lazy var palckaLeftLabel: UILabel = {
        $0.backgroundColor = .lightGray
        return $0
    }(UILabel(frame: CGRect(x: 220, y: 452, width: view.frame.width - 250, height: 1)))
    
    private lazy var OrLabel: UILabel = {
        $0.text = "OR"
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return $0
    }(UILabel(frame: CGRect(x: 180, y: 444, width: view.frame.width - 181, height: 20)))
    
    
    lazy var XButton: UIButton = {
        $0.setImage(.x, for: .normal)
        return $0
    }(UIButton(frame: CGRect(x: 239, y: 533, width: 44, height: 44)))
    
    lazy var instButton: UIButton = {
        $0.setImage(.inst, for: .normal)
        return $0
    }(UIButton(frame: CGRect(x: 175, y: 533, width: 44, height: 44)))
    
    
    lazy var facebookButton: UIButton = {
        $0.setImage(.faceBook, for: .normal)
        return $0
    }(UIButton(frame: CGRect(x: 111, y: 533, width: 44, height: 44)))
    
    
    private lazy var LoginButton: UIButton = {
        $0.setTitle("Log In", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 20
        $0.layer.borderWidth = 0.5
        $0.backgroundColor = .mainGreen
        
        return $0
    }(UIButton(frame: CGRect(x: 20, y: 656, width: view.frame.width - 40, height: 45), primaryAction: loginAction))
    
    lazy var loginAction = UIAction { [weak self] _ in
        let welcomeVC = WelcomeViewController()
        welcomeVC.nameLabel.text = self?.nameTextFiled.text ?? ""
        
        self?.navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(welcomeLabel)
        view.addSubview(steveLabel)
        
        view.addSubview(yourEmailLabel)
        view.addSubview(yourNameLabel)
        view.addSubview(yourPasscode)
        
        view.addSubview(nameTextFiled)
        view.addSubview(emailTextFiled)
        view.addSubview(passcodeTextFiled)
        
        view.addSubview(palckaRightLabel)
        view.addSubview(palckaLeftLabel)
        view.addSubview(OrLabel)
        
        view.addSubview(XButton)
        view.addSubview(instButton)
        view.addSubview(facebookButton)
        
        
        view.addSubview(LoginButton)
    }
    
    
    func setYourData(originaX: CGFloat = 20, originaY: CGFloat, width: CGFloat , height: CGFloat, name: String) -> UILabel{
        let label = UILabel(frame: CGRect(x: 20, y: originaY, width: width, height: height))
        label.text = name
        label.font = UIFont.systemFont(ofSize: 10, weight: .light)
        label.textColor = .black
        return label
    }
    
    
    func setInfoTextFiled(originaX: CGFloat = 20, originaY: CGFloat) -> UITextField {
        let texFiled = UITextField(frame: CGRect(x: 20, y: originaY, width: view.frame.width - 60, height: 42))
        texFiled.layer.cornerRadius = 10
        texFiled.layer.borderWidth = 0.5
    
        texFiled.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 1))
        texFiled.leftViewMode = .always
        return texFiled
    }


    

}



#Preview() {
    ViewController()
}
