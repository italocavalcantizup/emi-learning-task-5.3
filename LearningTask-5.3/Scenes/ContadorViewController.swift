//
//  ViewController.swift
//  LearningTask-5.3
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ContadorViewController: UIViewController {
    
    var contador: Contador? {
        didSet {
            guard isViewLoaded, let contador = contador else { return }
            atualizaView(para: contador)
        }
    }
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var incrementoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contador = contador {
            atualizaView(para: contador)
        }
    }

    
    @IBAction func botaoMenosPressionado(_ sender: UIButton) {
        contador?.valor -= 1
    }
    
    @IBAction func botaoMaisPressionado(_ sender: UIButton) {
        contador?.valor += 1
    }
    
    @IBAction func botaoResetPressionado(_ sender: UIButton) {
        print("botao Reset")
    }
    
    @IBAction func stepperPressionado(_ sender: UIStepper) {
        print("botao Stepper")
    }
    
    func atualizaView(para contador: Contador) {
        contadorLabel.text = String(describing: contador.valor)
        alteraBackground()
    }
    
    func alteraBackground() {
        if let valor = contador?.valor, valor < 0 {
            containerView.backgroundColor = UIColor(named: "Almond")
        } else {
            containerView.backgroundColor = UIColor(named: "Satin Linen")
        }
    }
    
}

