//
//  ResultView.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 14/10/2020.
//

import UIKit

class ResultView: UIView {
    //MARK: Properties
    
    let bulletin: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: "\u{2022}", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20) ])
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        self.addSubview(bulletin)
        self.addSubview(label)
        
        bulletin.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        bulletin.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        bulletin.widthAnchor.constraint(equalToConstant: 25).isActive = true
        bulletin.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        label.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: bulletin.trailingAnchor, constant: 5).isActive = true
        label.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
