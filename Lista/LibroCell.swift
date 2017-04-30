//
//  LibroCell.swift
//  Lista
//
//  Created by Aplimovil on 21/04/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class LibroCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var autor: UILabel!
    @IBOutlet weak var paginas: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
