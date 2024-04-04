//
//  WelcomeViewController.swift
//  practica
//
//  Created by Nikita Shipovskiy on 04/04/2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    lazy var nameLabel: UILabel = {
        $0.text = "Name"
        $0.textColor = .mainGreen
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return $0
     }(UILabel(frame: CGRect(x: 20, y: 75, width: view.frame.width - 105, height: 25)))
    
    
    private lazy var yourWelcome: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        $0.textColor = .black
        $0.text = ", your welcome"
        
        return $0
    }(UILabel(frame: CGRect(x: 90, y: 75, width: view.frame.width - 200, height: 25)))
    
    private lazy var mainImage: UIImageView = {
        $0.image = .welcome1
        return $0
    }(UIImageView(frame: CGRect(x: 31, y: 155, width: 332, height: 332)))
    
    private lazy var toDoListwithLabel: UILabel = {
        $0.text = "To do list with"
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return $0
    }(UILabel(frame: CGRect(x: 105, y: 507, width: view.frame.width - 200, height: 20)))
    
    private lazy var AILabel: UILabel = {
        $0.text = "AI"
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        $0.textColor = .mainGreen
        return $0
    }(UILabel(frame: CGRect(x: 270, y: 507, width: view.frame.width - 180, height: 20)))
    
    private lazy var startButton: UIButton = {
        $0.setTitle("Start", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15 , weight: .bold)
        $0.tintColor = .white
        $0.backgroundColor = .mainGreen
        $0.layer.cornerRadius = 20
        $0.layer.borderWidth = 0.5
        return $0
    }(UIButton(frame: CGRect(x: 20, y: 656, width: view.frame.width - 40, height: 45)))
    
    
    private lazy var descriptionLabel: UILabel = {
        $0.text = "This is a new To do list it has many functions that are not found in other similar applications Its most important feature is that it has AI "
        $0.numberOfLines = 0
        $0.font = UIFont.systemFont(ofSize: 10 ,weight: .light)
        $0.textAlignment = .center
        return $0
    }(UILabel(frame: CGRect(x: 89, y: 547, width: view.frame.width - 178, height: 55)))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(nameLabel)
        view.addSubview(yourWelcome)
        
        view.addSubview(mainImage)
        
        view.addSubview(toDoListwithLabel)
        view.addSubview(AILabel)
        
        view.addSubview(descriptionLabel)
        view.addSubview(startButton)
    }

}

#Preview() {
    WelcomeViewController()
}
