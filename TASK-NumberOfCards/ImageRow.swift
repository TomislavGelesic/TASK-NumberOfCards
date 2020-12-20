//
//  imageRow.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 14/10/2020.
//

import UIKit

class ImageRow: UIView {
    //MARK: Properties
    let imageView1: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView2: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView3: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView4: UIImageView = {
        let view = UIImageView()        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView5: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView6: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
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
        self.addSubview(stack)
        stack.addSubview(imageView1)
        stack.addSubview(imageView2)
        stack.addSubview(imageView3)
        stack.addSubview(imageView4)
        stack.addSubview(imageView5)
        stack.addSubview(imageView6)
        
        stack.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stack.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stack.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }

}
