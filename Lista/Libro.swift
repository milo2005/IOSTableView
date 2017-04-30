//
//  Libro.swift
//  Lista
//
//  Created by Aplimovil on 21/04/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import Foundation

class Libro{
    
    var nombre:String
    var autor:String
    var paginas:Int
    var imagen:String
    
    init(nombre:String, autor:String, paginas:Int, imagen:String){
        self.nombre = nombre
        self.autor = autor
        self.paginas = paginas
        self.imagen = imagen
    }

}
