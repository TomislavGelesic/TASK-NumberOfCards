//
//  ResultViewController.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: Properties
    let resultText: ResultText = {
        let resultText = ResultText()
        
        return resultText
    }()
    
    var number: Int?
    
    
    //MARK: init
    init(number: Int) {
        super.init(nibName: nil, bundle: nil)
        self.number = number
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Go back and pick another number"
        view.backgroundColor = .white
        
        
        
    }
    
    //MARK: Private Functions
    


}
