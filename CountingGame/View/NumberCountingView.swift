//
//  NumberCountingView.swift
//  CountingGame
//
//  Created by Sujeet on 22/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

protocol NumberViewProtocol : class {
    func changePageUi (withData data : CountingData)
}

class NumberCountingView: UIViewController , NumberViewProtocol {

    var intractor : NumberIntractorProtocol?
    @IBOutlet weak var lblDigit: UILabel!
    @IBOutlet weak var imgDigit: UIImageView!
    @IBOutlet weak var imgDescription: UIImageView!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPrevClicked (_ sender : Any)
    {
        counter = counter - 1
        intractor?.prepareData(forNumber: counter)
    }
    
    @IBAction func btnNextClicked (_ sender : Any)
    {
        counter = counter + 1
        intractor?.prepareData(forNumber: counter)
    }
    
    @IBAction func btnSoundClicked (_ sender : Any)
    {
        
    }
    
    func changePageUi(withData data: CountingData) {
        print("view")
        lblDigit.text = data.text
        imgDigit.animate(toView: imgDigit, imageName: data.numberImage, direction: .bottom)
        imgDescription.animate(toView: imgDescription, imageName: data.numberImage, direction: .bottom)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
