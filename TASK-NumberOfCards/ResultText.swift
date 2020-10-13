//
//  ResultText.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 13/10/2020.
//

import UIKit

class ResultText: UIView {
    
    //MARK:Properties
    let dotResultText: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let labelResultText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    
    let stackResultText: UIStackView = {
        let stackResultText = UIStackView()
        stackResultText.axis = .vertical
        stackResultText.spacing = 8
        stackResultText.translatesAutoresizingMaskIntoConstraints = true
        return stackResultText
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
        
        let attributedMessage1 = NSMutableAttributedString(string: "The dek of cards was successfully assembled after the ")
        let attributedMessagePartToEdit1 = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        let attributedMessage2 = NSMutableAttributedString(string: "card")
        let attributedMessagePartToEdit2 = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        let attributedMessage3 = NSMutableAttributedString(string: "successfull decks of cards")
    
        
        
        self.addSubview(stackResultText)
        stackResultText.addSubview(dotResultText)
        stackResultText.addSubview(labelResultText)
        
        
        setConstraints()
    }
    
    private func setConstraints(){
        
        stackResultText.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackResultText.leftAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackResultText.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}
