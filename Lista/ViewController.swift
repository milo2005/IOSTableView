//
//  ViewController.swift
//  Lista
//
//  Created by Aplimovil on 21/04/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var data:[Libro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [
            Libro(nombre: "Juego de Tronos", autor: "George RR Martin", paginas: 700, imagen: "http://cloud10.todocoleccion.online/libros-segunda-mano-ciencia-ficcion-fantasia/tc/2014/11/20/02/46322055.jpg")
            , Libro(nombre: "Torre Oscura", autor: "Stephen King", paginas: 300, imagen: "http://www.cinefant.es/wp-content/uploads/2011/10/LaTorreOscura.png")
            , Libro(nombre: "Inferno", autor: "Dan Brown", paginas: 350, imagen: "https://covers.audiobooks.com/images/covers/full/9780804147989.jpg")
            , Libro(nombre: "IT", autor: "Stephen King", paginas: 280, imagen: "http://los40mx00.epimg.net/los40/imagenes/2017/03/11/cinetv/1489197772_654856_1489197914_noticia_normal.jpg")
        ]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table Datasource

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda") as! LibroCell
        
        let l = data[indexPath.row]
        
        cell.nombre.text = l.nombre
        cell.paginas.text = "\(l.paginas) pag"
        cell.autor.text = l.autor
        cell.img.sd_setImage(with: URL(string:l.imagen))
        
        return cell
        
    }
    
    // MARK: - Delegate TableView
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let l = data[indexPath.row]
        let alert = UIAlertController(title: l.nombre, message: "Seleccionaste un libro", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (alert) in
            print("Alert ok")
        }
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel) { (alert) in
            print("Alert Cancel")
        }
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }

}

