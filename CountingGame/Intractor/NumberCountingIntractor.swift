//
//  NumberCountingIntractor.swift
//  CountingGame
//
//  Created by Sujeet on 23/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

protocol NumberIntractorProtocol {
    init(with presenter : NumberPresenterProtocol)
    func prepareData (forNumber number : Int )
}

class NumberIntractor: NumberIntractorProtocol {
    
    let presenter : NumberPresenterProtocol
    
    required init(with presenter: NumberPresenterProtocol) {
        self.presenter = presenter
    }
    
    func prepareData (forNumber number : Int ) {
        print("Intractor")
        var strNumber :String
        var strDescImageName : String
        
        switch number {
        case 1:
            strNumber = "One"
            strDescImageName = "Apple"
        case 2:
            strNumber = "Two"
            strDescImageName = "Apple"
        case 3:
            strNumber = "Three"
            strDescImageName = "Apple"
        case 4:
            strNumber = "Four"
            strDescImageName = "Apple"
        case 5:
            strNumber = "Five"
            strDescImageName = "Apple"
        case 6:
            strNumber = "Six"
            strDescImageName = "Apple"
        case 7:
            strNumber = "Seven"
            strDescImageName = "Apple"
        case 8:
            strNumber = "Eight"
            strDescImageName = "Apple"
        case 9:
            strNumber = "Nine"
            strDescImageName = "Apple"
        case 10:
            strNumber = "Ten"
            strDescImageName = "Apple"
        default:
            strNumber = "One"
            strDescImageName = "Apple"
        }
        
        self.presenter.show(withData: (strNumber, strDescImageName))
    }
    
    
}
