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
    @IBOutlet weak var incrementoStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contador = contador {
            atualizaView(para: contador)
        }
    }

    
    @IBAction func botaoMenosPressionado(_ sender: UIButton) {
        contador?.calcula(operador: .decrementa)
    }
    
    @IBAction func botaoMaisPressionado(_ sender: UIButton) {
        contador?.calcula(operador: .incrementa)
    }
    
    @IBAction func botaoResetPressionado(_ sender: UIButton) {
        contador?.reseta()
    }
    
    @IBAction func stepperPressionado(_ sender: UIStepper) {
        contador?.valorIncremento = Int(sender.value)
    }
    
    func atualizaView(para contador: Contador) {
        contadorLabel.text = String(describing: contador.valorContador)
        incrementoLabel.text = String(describing: contador.valorIncremento)
        incrementoStepper.value = Double(contador.valorIncremento)
        
        alteraBackground()
    }
    
    func alteraBackground() {
        if let valor = contador?.valorContador, valor < 0 {
            containerView.backgroundColor = UIColor(named: "Almond")
        } else {
            containerView.backgroundColor = UIColor(named: "Satin Linen")
        }
    }
    
}

