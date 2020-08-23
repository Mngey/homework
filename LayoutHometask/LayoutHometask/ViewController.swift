//
//  ViewController.swift
//  LayoutHometask
//
//  Created by a.a.mitrofanova on 23/08/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUI()
    }
    
        func styleUI() {
         mainImageView.layer.cornerRadius = 10
         mainImageView.layer.borderWidth = 2
         mainImageView.layer.borderColor = UIColor.black.cgColor
        
        myLabel.layer.cornerRadius = 10
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.black.cgColor
        
        styleOutletCollection.forEach { button in
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    func changeButtonImage(with image: String) {
        leftButtonDown.setImage(UIImage(named: "star.png"), for: .normal)
        leftButtonDown.tintColor = .systemPink
        leftButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
    }
        func changeButtonImage2(with image: String) {
            leftButtonUp.setImage(UIImage(named: "home.png"), for: .normal)
            leftButtonUp.tintColor = .systemPink
            leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
    }
    
    @IBAction func touchDragIn(_ sender: Any) {changeButtonImage2(with: "home.png")
        mainImageView.image = UIImage(named: "coconut.png")
        mainImageView.layer.backgroundColor = UIColor.white.cgColor
    }
    @IBAction func touchDragOut(_ sender: Any) {
        changeButtonImage(with: "star.png")
        myLabel.text = "the button works"
        myLabel.textColor = UIColor.white
        myLabel.backgroundColor = UIColor.systemPink
    }
    
    @IBAction func rightButtonUpPushed(_ sender: Any) {
        self.view.backgroundColor = UIColor.black
    }
    
    @IBAction func rightButtonDownPushed(_ sender: Any) {
        leftButtonUp.layer.backgroundColor = UIColor.white.cgColor
        leftButtonUp.setTitleColor(UIColor.black, for: .normal)
        leftButtonDown.layer.backgroundColor = UIColor.white.cgColor
        leftButtonDown.setTitleColor(UIColor.black, for: .normal)
        rightButtonUp.layer.backgroundColor = UIColor.white.cgColor
        rightButtonUp.setTitleColor(UIColor.black, for: .normal)
        rightButtonDown.layer.backgroundColor = UIColor.white.cgColor
              rightButtonDown.setTitleColor(UIColor.black, for: .normal)
        
    }
    
}


