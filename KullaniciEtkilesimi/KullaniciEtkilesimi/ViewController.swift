//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by alihizardere on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){_ in
           print("İptal seçildi")
        }
        alert.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){_ in
            print("Tamam seçildi")
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){_ in
           print("İptal seçildi")
        }
        actionSheet.addAction(iptalAction)
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){_ in
            print("Tamam seçildi")
        }
        actionSheet.addAction(tamamAction)
        
        self.present(actionSheet, animated: true)
    }
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Sistem Girişi", message: "Mail ve şifre giriniz", preferredStyle: .alert)
        
        alert.addTextField { textfield in//0.
            textfield.placeholder = "E-mail"
            textfield.keyboardType = .emailAddress
        }
        
        alert.addTextField{textfield in//1.
            textfield.placeholder = "Şifre"
            textfield.keyboardType = .numberPad
            textfield.isSecureTextEntry = true
        }
        
        let girisAction = UIAlertAction(title: "Giriş", style: .cancel){_ in
            let textFieldEmail = alert.textFields![0] as UITextField
            let textFieldSifre = alert.textFields![1] as UITextField
            
            if let email = textFieldEmail.text, let sifre = textFieldSifre.text{
                print("Email : \(email) Şifre : \(sifre)")
            }
        }
        alert.addAction(girisAction)
        self.present(alert,animated: true)
    }
}

