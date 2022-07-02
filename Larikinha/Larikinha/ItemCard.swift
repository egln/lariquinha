//
//  Item.swift
//  Larikinha
//
//  Created by egln on 05/04/22.
//

import Foundation
import UIKit

class ItemCard {
    
    let nome: String
    let preçoFixo: Double
    var quantidade: Double
    var preçoCard: Double
    
    
    init(nome: String, preçoFixo: Double, quantidade: Double, preçoCarrinho: Double){
        self.nome = nome
        self.preçoFixo = preçoFixo
        self.quantidade = quantidade
        self.preçoCard = preçoFixo * quantidade
    
        func aumentarQuantidade(){
            self.quantidade = self.quantidade + 1
        }
        
        func diminuirQuantidade(){
            self.quantidade = self.quantidade - 1
        }
    }
}
