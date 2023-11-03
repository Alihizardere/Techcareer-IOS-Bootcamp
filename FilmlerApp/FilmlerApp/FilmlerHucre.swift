//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by alihizardere on 24.09.2023.
//

import UIKit

protocol hucreProtocol{
    func sepeteEkleTikla(indexPath:IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var filmlerImageView: UIImageView!
    
    @IBOutlet weak var labelFilmFiyat: UILabel!
    
    var hucreProtocol:hucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
}
