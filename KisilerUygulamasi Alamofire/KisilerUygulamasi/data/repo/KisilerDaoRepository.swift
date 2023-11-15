//
//  KisilerDaoRepository.swift
//  KisilerUygulamasi
//
//  Created by alihizardere on 26.09.2023.
//

import Foundation
import RxSwift
import Alamofire

class KisilerDaoRepository{//Dao: Database Access Object
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    //http://kasimadalan.pe.hu/kisiler/tum_kisiler.php
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        let params:Parameters = ["kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post,parameters: params).response { response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("--------INSERT------")
                    print("Başarı : \(cevap.success!)")
                    print("Başarı : \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
    func guncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String){
        let params:Parameters = ["kisi_id":kisi_id,"kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php", method: .post,parameters: params).response { response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("--------UPDATE------")
                    print("Başarı : \(cevap.success!)")
                    print("Başarı : \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func ara(aramaKelimesi:String){
        let params:Parameters = ["kisi_ad":aramaKelimesi]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php",method: .post, parameters: params).response {response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    if let liste = cevap.kisiler {
                        self.kisilerListesi.onNext(liste)
                    }
                    //let rawResponse = try JSONSerialization.jsonObject(with: data)//Ham olarak webservisi gösterir web servisten veri alıp almadığımızı bu şekilde kontrol edebiliriz.
                   // print(rawResponse)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
        
    }
    
    func sil(kisi_id:Int){
        let params:Parameters = ["kisi_id":kisi_id]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php", method: .post,parameters: params).response { response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("--------DELETE------")
                    print("Başarı : \(cevap.success!)")
                    print("Başarı : \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisileriYukle(){
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php", method: .get).response {response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    if let liste = cevap.kisiler {
                        self.kisilerListesi.onNext(liste)
                    }
                    //let rawResponse = try JSONSerialization.jsonObject(with: data)//Ham olarak webservisi gösterir web servisten veri alıp almadığımızı bu şekilde kontrol edebiliriz.
                   // print(rawResponse)
                }catch{
                    print(error.localizedDescription)
                }
            }
                
        }
    }
}

