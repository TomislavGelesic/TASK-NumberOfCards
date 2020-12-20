//
//  ViewController.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class MainViewController: UIViewController {
    //MARK: Poperties
    let cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let inputNumberTextField: UITextField = {
        let textField = UITextField()
        textField.keyboardType = .decimalPad
        textField.backgroundColor = UIColor.gray
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let instructionLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Enter a three-digit or larger number"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let gambleButton: GambleButton = {
        let gambleButton = GambleButton()
        gambleButton.translatesAutoresizingMaskIntoConstraints = false
        gambleButton.button.addTarget(self, action: #selector(gambleButtonTapped), for: .touchUpInside)
        return gambleButton
    }()
    
    
//MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSMutableAttributedString.Key.foregroundColor: UIColor.red]
        self.title = "Number of decks of cards"
        
        cardImageView.image = UIImage(named: "Card51")
        inputNumberTextField.layer.borderColor = UIColor.red.cgColor
        inputNumberTextField.layer.borderWidth = 1.0
        inputNumberTextField.backgroundColor = UIColor.lightGray
        
        view.addSubview(cardImageView)
        view.addSubview(inputNumberTextField)
        view.addSubview(instructionLabel)
        view.addSubview(gambleButton)
        
        cardImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        cardImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        cardImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        inputNumberTextField.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30 ).isActive = true
        inputNumberTextField.widthAnchor.constraint(equalToConstant: 80).isActive = true
        inputNumberTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        inputNumberTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        instructionLabel.topAnchor.constraint(equalTo: inputNumberTextField.bottomAnchor, constant: 20).isActive = true
        instructionLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        instructionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        gambleButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 50).isActive = true
        gambleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        gambleButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        gambleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    //MARK: Private Functions
    @objc private func gambleButtonTapped () {
        
        let alert = UIAlertController(title: "INCORRECT ENTRY",
                                      message: "The entered number must be at least three-digit.",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Try again",
                                      style: .cancel,
                                      handler: { (action) in
                                        
                                        self.inputNumberTextField.text = ""
                                      }
        ))
        
        alert.view.tintColor = UIColor.red
        
        if let text = inputNumberTextField.text,
           let number = Int(text),
           number >= 100 {
            
            let resultViewController = ResultViewController(number: number)
            
            navigationController?.pushViewController(resultViewController, animated: true)
            return
        }
        
        self.present(alert, animated: true, completion: nil)
        
        return
    }
}

