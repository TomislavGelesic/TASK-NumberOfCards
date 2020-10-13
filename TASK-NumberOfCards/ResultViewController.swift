//
//  ResultViewController.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: Properties
    var number: Int?
    
    
    /*let resultText: ResultText = {
     let resultText = ResultText()
     
     return resultText
     }()
     */
    
    
    
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
        
        if let n = self.number {
            let cards = getRandomCardSet(number: n)
        
            var firstCardSet = [Int]()
            var cardsUsedUntilFirstDeck:Int = 0
            for card in cards {
                if !firstCardSet.contains(card) {
                    firstCardSet.append(card)
                    if firstCardSet.count < 52 {
                        cardsUsedUntilFirstDeck += 1
                    }
                }
            }
            
            var counts: [Int: Int] = [:]

            for item in cards {
                counts[item] = (counts[item] ?? 0) + 1
            }
            /*print(counts)

            for (key, value) in counts {
                print("\(key) occurs \(value) time(s)")
            }*/
            
            
        }
    }
    
    //MARK: Private Functions
    private func getRandomCardSet(number: Int) -> [Int] {
        var cards: [Int] = []
        for _ in 0..<number {
            cards.append(Int.random(in: 1...52))
        }
        return cards
    }
    
}






