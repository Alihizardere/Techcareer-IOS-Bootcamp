//
//  ViewController.swift
//  BildirimKullanimi
//
//  Created by alihizardere on 5.10.2023.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    var izinKontrol = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    UNUserNotificationCenter.current().delegate = self
       
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge],completionHandler: { granted,error in
            
        self.izinKontrol = granted
        
        if granted {
            print("İzin alma işlemi başarılı")
        }else{
            print("İzin alma işlemi başarısız")
        }
            
        })
    }

    @IBAction func buttonBildirimOlustur(_ sender: Any) {
        if izinKontrol  {
            let icerik = UNMutableNotificationContent()
            icerik.title = "Başlık"
            icerik.subtitle = "Alt başlık"
            icerik.body = "Mesaj"
            icerik.badge = 1
            icerik.sound = UNNotificationSound.default
            
            //1dk-60sn sınırı var time intervalin repeatli olduğu hal için
            let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
            
            let istek = UNNotificationRequest(identifier: "id", content: icerik, trigger: tetikleme)
            
            UNUserNotificationCenter.current().add(istek)
        }
    }
    
}

extension ViewController : UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner,.sound,.badge])
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
       
        let app = UIApplication.shared
        if app.applicationState == .active {
            print("Önplan Bildirim seçildi")
        }
        if app.applicationState == .inactive {
            print("Arkaplan Bildirim seçildi")
        }
        app.applicationIconBadgeNumber = 0
        completionHandler()
    }
}

