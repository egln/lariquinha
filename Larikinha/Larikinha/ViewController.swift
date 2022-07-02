//
//  ViewController.swift
//  Larikinha
//
//  Created by egln on 24/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    let listaProdutos: [String] = ["Banana", "Maçã", "Pêssego", "Cupuaçu", "Fruta-pão", "Melão", "Maracujá", "Limão", "Uva", "Acerola", "Manga", "Pitanga", "Melancia", "Coco", "Jabuticaba", "Cajá"]

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProdutos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listaItens.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listaProdutos[indexPath.row]
        return cell
    }
    
    
    @IBOutlet weak var listaItens: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        listaItens.dataSource = self
        listaItens.delegate = self
    }
}
