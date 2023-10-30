//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by alihizardere on 14.09.2023.
//

import UIKit

class OyunEkrani: UIViewController {

    @IBOutlet weak var labelOyunEkrani: UILabel!
    var kisiNesnesi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOyunEkrani.text = "Merhaba"
        
        if let k = kisiNesnesi {
            labelOyunEkrani.text = "\(k.ad!) - \(k.yas!) - \(k.boy!) - \(k.bekar!)"
        }

    }
    
    @IBAction func geriButon(_ sender: Any) {
        //navigationController?.popViewController(animated: true)//Bir önceki sayfaya döner
        navigationController?.popToRootViewController(animated: true)// var olan anasayfaya döner
    }
    
    @IBAction func bittiButon(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
}
