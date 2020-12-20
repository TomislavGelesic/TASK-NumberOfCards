//
//  ResultViewController.swift
//  TASK-NumberOfCards
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: Properties
    var number: Int = -1
    var completedDecks: Int = 0
    var cardsUsedUntilFirstDeckCompletion: Int = 0
    
    let resultText1: ResultView = {
        let resultText = ResultView()
        resultText.translatesAutoresizingMaskIntoConstraints = false
        return resultText
    }()
    
    let resultText2: ResultView = {
        let resultText = ResultView()
        resultText.translatesAutoresizingMaskIntoConstraints = false
        return resultText
    }()
    
    let stackText: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let imageRow0: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let image00: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Card1")
        return view
    }()
    
    let image01: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Card2")
        return view
    }()
    let imageRow1: ImageRow = {
        let row = ImageRow()
        row.imageView1.image = UIImage(named: "Card3")
        row.imageView2.image = UIImage(named: "Card4")
        row.imageView3.image = UIImage(named: "Card5")
        row.imageView4.image = UIImage(named: "Card6")
        row.imageView5.image = UIImage(named: "Card7")
        row.imageView6.image = UIImage(named: "Card8")
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }()
    
    let imageRow2: ImageRow = {
        let row = ImageRow()
        row.imageView1.image = UIImage(named: "Card9")
        row.imageView2.image = UIImage(named: "Card10")
        row.imageView3.image = UIImage(named: "Card11")
        row.imageView4.image = UIImage(named: "Card12")
        row.imageView5.image = UIImage(named: "Card13")
        row.imageView6.image = UIImage(named: "Card14")
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }()
    
    let imageRow3: ImageRow = {
        let row = ImageRow()
        row.imageView1.image = UIImage(named: "Card15")
        row.imageView2.image = UIImage(named: "Card16")
        row.imageView3.image = UIImage(named: "Card17")
        row.imageView4.image = UIImage(named: "Card18")
        row.imageView5.image = UIImage(named: "Card19")
        row.imageView6.image = UIImage(named: "Card20")
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }()
    
    let imageRow4: ImageRow = {
        let row = ImageRow()
        row.imageView1.image = UIImage(named: "Card21")
        row.imageView2.image = UIImage(named: "Card22")
        row.imageView3.image = UIImage(named: "Card23")
        row.imageView4.image = UIImage(named: "Card24")
        row.imageView5.image = UIImage(named: "Card25")
        row.imageView6.image = UIImage(named: "Card26")
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }()
    
    let imageRow5: ImageRow = {
        let row = ImageRow()
        row.imageView1.image = UIImage(named: "Card27")
        row.imageView2.image = UIImage(named: "Card28")
        row.imageView3.image = UIImage(named: "Card29")
        row.imageView4.image = UIImage(named: "Card30")
        row.imageView5.image = UIImage(named: "Card31")
        row.imageView6.image = UIImage(named: "Card32")
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }()
    
    let imageRow6: ImageRow = {
        let row = ImageRow()
        row.imageView1.image = UIImage(named: "Card33")
        row.imageView2.image = UIImage(named: "Card34")
        row.imageView3.image = UIImage(named: "Card35")
        row.imageView4.image = UIImage(named: "Card36")
        row.imageView5.image = UIImage(named: "Card37")
        row.imageView6.image = UIImage(named: "Card38")
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }()
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
        
        view.addSubview(stackText)
        stackText.addArrangedSubview(resultText1)
        stackText.addArrangedSubview(resultText2)
        
        setConstraints()
        
        
//        makeDecks(with: getRandomCard(amount: self.number))
        
//        ShowResult()
        
    }
    //MARK: Constraints
    private func setConstraints(){
        stackText.topAnchor.constraint(equalTo: view.topAnchor,constant: 100).isActive = true
        stackText.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackText.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        
    }
    
    //MARK: Private Functions
    private func getRandomCard(amount: Int) -> [Int] {
        var cards = [Int]()
        for _ in 0..<amount {
            cards.append(Int.random(in: 1...52))
        }
        return cards
    }
    
    
    private func ShowResult() {
        var numExt = ""
        switch cardsUsedUntilFirstDeckCompletion%10 {
        case 1:
            numExt = "st"
        case 2:
            numExt = "nd"
        case 3:
            numExt = "rd"
        default:
            numExt = "th"
        }
        var attrString = NSMutableAttributedString(string: "The deck of cards was successfully assembled after the ")
        attrString.append(NSMutableAttributedString(string: "\(self.cardsUsedUntilFirstDeckCompletion)\(numExt)",
                                                    attributes: [NSAttributedString.Key.foregroundColor : UIColor.red]))
        attrString.append(NSMutableAttributedString(string: " card"))
        resultText1.label.attributedText = attrString
        var completedDecks = 0
//        for i in decks.startIndex..<decks.endIndex{
//            if decks[i].completedDeck {
//                completedDecks += 1
//            }
//        }
        attrString = NSMutableAttributedString(string: "\(completedDecks)", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        attrString.append(NSAttributedString(string: "successfull decks of cards"))
        resultText2.label.attributedText = attrString
    }
    
    func newCardAdded() {
        self.cardsUsedUntilFirstDeckCompletion += 1
    }
}


class Deck {
    var completedDeck: Bool
    var deck: [Int]
    init () {
        self.completedDeck = false
        self.deck = [Int]()
    }
    
    func addCard(cardNumber: Int) {
        self.deck.append(cardNumber)
    }
    
    func deckCompleted(){
        self.completedDeck = true
    }
    
}


