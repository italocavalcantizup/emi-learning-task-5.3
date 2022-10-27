//
//  ViewController.swift
//  LearningTask-5.3
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ContadorViewController: UIViewController {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var incrementoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func botaoMenosPressionado(_ sender: UIButton) {
        containerView.backgroundColor = UIColor(named: "Almond")
    }
    
    @IBAction func botaoMaisPressionado(_ sender: UIButton) {
        containerView.backgroundColor = UIColor(named: "Satin Linen")
    }
    
    @IBAction func botaoResetPressionado(_ sender: UIButton) {
        print("botao Reset")
    }
    
    @IBAction func stepperPressionado(_ sender: UIStepper) {
        print("botao Stepper")
    }
    
}

