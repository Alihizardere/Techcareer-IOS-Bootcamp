//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by alihizardere on 14.09.2023.
//

import UIKit

class Anasayfa: UIViewController {
   
    @IBOutlet weak var labelAnasayfa: UILabel!
    
    var sayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sayfa açıldığında bir kere çalışır.
        print("Yaşam Döngüsü : viewDidLoad")
        
        labelAnasayfa.text = String(sayac)
    }
    override func viewWillAppear(_ animated: Bool) {
        //Sayfa her göründüğünde çalışır
        //Sayfa geri dönüşü takip edilebilir.
        print("Yaşam Döngüsü : viewWillAppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        //Sayfa her görünmez olduğunda çalışır.
        print("Yaşam Döngüsü : viewDidDisappear")
    }
    @IBAction func butonTikla(_ sender: Any) {
        sayac += 1
        labelAnasayfa.text = String(sayac)
        if sayac == 5{
            //performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
        }
    }
    
    @IBAction func butonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("Oyun ekranı geçiş çalıştı")
            if let veri = sender as? Kisiler{//Any(SuperClass) -> String(SubClass)
                print("Veri : \(veri)")
                let gidilecekVC = segue.destination  as! OyunEkrani//UIViewController(superclass) -> OyunEkrani(subclass)
                gidilecekVC.kisiNesnesi = veri
                
            }
        }
    }
    
    @IBAction func butonEkle(_ sender: Any) {
        print("Ekle Tıklandı")
    }
    
    @IBAction func butonCikis(_ sender: Any) {
        print("Çıkış Tıklandı")
    }
    
    
}

