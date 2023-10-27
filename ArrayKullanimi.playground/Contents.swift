import UIKit

var numaralar = [10,20,30]
var meyveler = [String]()// boş array

//veri ekleme
meyveler.append("Elma")//0. index
meyveler.append("Muz")//1.index
meyveler.append("Kiraz")//2.index
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

//Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

//Veri okuma
let meyve = meyveler[2]
print(meyve)

print("Boş kontrol : \(meyveler.isEmpty)")
print("Boyut       : \(meyveler.count)")
print("İlk eleman  : \(meyveler.first!)")//0.index
print("İlk eleman  : \(meyveler.last!)")// son index
print("İçeriyor mu : \(meyveler.contains("Muz"))")
print("İndex bulma : \(meyveler.firstIndex(of: "Muz")!)")

for meyve in meyveler {//for each
    print("Sonuç : \(meyve)")
}

for (indeks, meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Nesne tabanlı
class Yemekler {
    var id:Int?
    var ad:String?
    var fiyat:Int?
    var puan:Double?
    
    init(id:Int,ad:String,fiyat:Int,puan:Double){
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
        self.puan = puan
    }
}
var y1 = Yemekler(id: 1, ad: "Köfte", fiyat: 80, puan: 4.6)
var y2 = Yemekler(id: 2, ad: "Ayran", fiyat: 30, puan: 3.8)
var y3 = Yemekler(id: 3, ad: "Tramisu", fiyat: 60, puan: 4.3)

var yemeklerListesi = [Yemekler]()
yemeklerListesi.append(y1)
yemeklerListesi.append(y2)
yemeklerListesi.append(y3)


for y in yemeklerListesi {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

// Filtreleme
print("-----------------Filtreleme 1---------------")
var f1 = yemeklerListesi.filter({$0.fiyat! > 50 && $0.fiyat! < 70})
for y in f1 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

print("-----------------Filtreleme 2---------------")
var f2 = yemeklerListesi.filter({$0.ad!.contains("an")})
for y in f2 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

//Sorting - Sıralama
print("-----------------Fiyata : Azalan---------------")
var s1 = yemeklerListesi.sorted(by: {$0.fiyat! > $1.fiyat!})//Descending : DESC ve Ascending : ASC araştır
for y in s1 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

print("-----------------Fiyata : Artan---------------")
var s2 = yemeklerListesi.sorted(by: {$0.fiyat! < $1.fiyat!})
for y in s2 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

print("-----------------Puan : Azalan---------------")
var s3 = yemeklerListesi.sorted(by: {$0.puan! > $1.puan!})
for y in s3 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

print("-----------------Puan : Artan---------------")
var s4 = yemeklerListesi.sorted(by: {$0.puan! < $1.puan!})
for y in s4 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

print("-----------------Ad : Azalan---------------")
var s5 = yemeklerListesi.sorted(by: {$0.ad! > $1.ad!})
for y in s5 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}

print("-----------------Ad : Artan---------------")
var s6 = yemeklerListesi.sorted(by: {$0.ad! < $1.ad!})
for y in s6 {
    print("Id : \(y.id!) - Ad : \(y.ad!) - Fiyat \(y.fiyat!) - Puan : \(y.puan!)")
}
