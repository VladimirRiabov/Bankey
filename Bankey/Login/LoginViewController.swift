//
//  ViewController.swift
//  Bankey
//
//  Created by Владимир Рябов on 05.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    let signInButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }


}

extension LoginViewController {
    private func style() {
        //makes controls ready to autolayout by code
        loginView.translatesAutoresizingMaskIntoConstraints  = false
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8 //interval between text and image
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        
        
    }
    
    private func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        
        
        //.activate make all the constraintses sets isActive to true
        //LoginView
        NSLayoutConstraint.activate([
            //center
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            //leading board
            //system standart spacing is equal to 8. multiplier tells us how much multiply this space 1x8
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            //trailing anchor we put another way. We take the loginView trailing anchor and add to it standart space
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
            
        ])
        
        //Sign In Button
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
          
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),

            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
            
        ])
        
    }
}

extension LoginViewController {
    @objc func signInTapped(sender: UIButton) {
        
    }
}

