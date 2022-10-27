//
//  Contador.swift
//  LearningTask-5.3
//
//  Created by Italo cavalcanti on 27/10/22.
//

import Foundation

enum Operador {
    case incrementa
    case decrementa
}

struct Contador {
    var valorContador = 0
    var valorIncremento = 1
    
    mutating func calcula(operador: Operador) {
        switch operador {
        case .incrementa:
            valorContador += valorIncremento
        default:
            valorContador -= valorIncremento
        }
    }
    
    mutating func reseta() {
        valorContador = 0
        valorIncremento = 1
    }
    
}
