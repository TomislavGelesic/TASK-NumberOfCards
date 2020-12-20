//
//  GambleButton.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class GambleButton: UIView {
    
    //MARK: Properties
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.titleLabel?.font.withSize(30)
        button.setTitle("GAMBLE", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    
    //MARK: Private functions
    
    private func setupViews(){
        self.backgroundColor = .red
        self.layer.cornerRadius = 25
        
        imageView.image = UIImage(named: "Card40")
        
        self.addSubview(imageView)
        self.addSubview(button)
        
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
