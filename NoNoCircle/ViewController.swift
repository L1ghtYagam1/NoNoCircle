//
//  ViewController.swift
//  NoNoCircle
//
//  Created by Ярослав Щёголев on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lightRed: UIView!
    @IBOutlet weak var lightYeloy: UIView!
    @IBOutlet weak var lightGren: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightRed.layer.cornerRadius = 70
        lightYeloy.layer.cornerRadius = 70
        lightGren.layer.cornerRadius = 70
        
        startButton.layer.cornerRadius = 10
        
        lightRed.alpha = 0.3
        lightYeloy.alpha = 0.3
        lightGren.alpha = 0.3
    }
    
    
    
    @IBAction func startButton(_ sender: Any) {
    if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        switch count {
        case 0:
            lightRed.alpha = lightIsOn
            lightGren.alpha = lightIsOff
            count = 1
        case 1:
            lightYeloy.alpha = lightIsOn
            lightRed.alpha = lightIsOff
            count = 2
        case 2:
            lightYeloy.alpha = lightIsOff
            lightGren.alpha = lightIsOn
            count = 0
        default:
            break
    
        }

      }
    
    
    
}
