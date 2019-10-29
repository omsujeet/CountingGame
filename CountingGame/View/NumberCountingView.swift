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
    @IBOutlet weak var lblNumberText: UILabel!
    @IBOutlet weak var lblDigit: UILabel!
    @IBOutlet weak var imgDescription: UIImageView!
    @IBOutlet weak var btnPrev: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnSound: UIButton!
    
    var counter : Int = 0 {
        didSet
        {
            counter > 1 ? (btnPrev.isUserInteractionEnabled = true) : (btnPrev.isUserInteractionEnabled = false)
            counter < 10 ? (btnNext.isUserInteractionEnabled = true) : (btnNext.isUserInteractionEnabled = false)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        counter = counter + 1
        intractor?.prepareData(forNumber: counter)
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
//        lblNumberText.text = data.text
//        lblDigit.animate(toView: imgDigit, imageName: data.numberImage, direction: .bottom)
        animateNumber(withData: data)
        imgDescription.animate(toView: imgDescription, imageName: data.descImage, direction: .bottom)
    }
    
    func animateNumber(withData data: CountingData) {
        UIView.animate(withDuration: 0.5, animations: {
            self.lblDigit.alpha = 0.0
            self.lblNumberText.alpha = 0.0
        }, completion: { [weak self] finished in
            self?.lblDigit.text = String((self?.counter) ?? 0)
             self?.lblNumberText.text = data.text
            UIView.animate(withDuration: 0.8, animations: {
                self?.lblDigit.alpha = 1.0
                self?.lblNumberText.alpha = 1.0
            })})
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
