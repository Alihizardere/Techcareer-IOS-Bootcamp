//
//  ViewController.swift
//  UserDefaultsKullanimi
//
//  Created by alihizardere on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let ud = UserDefaults.standard
        
        //Kayıt
        ud.set("Ahmet", forKey: "ad")
        ud.set(1.78, forKey: "boy")
        
        //Silme
        //ud.removeObject(forKey: "ad")
        
        //Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok"
        let gelenBoy = ud.double(forKey: "boy")
        print("Gelen Ad : \(gelenAd)")
        print("Gelen Boy : \(gelenBoy)")
        
        
        //Sayaç Uygulama
        var sayac = ud.integer(forKey: "sayac")// varsayılan = 0
        sayac = sayac + 1
        ud.set(sayac, forKey: "sayac")
        labelSayac.text = "Açılış sayısı : \(sayac)"
        
    }
}

