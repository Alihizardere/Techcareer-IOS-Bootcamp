import UIKit

var ogrenciAd = "Ali"
var ogrenciYas = 24
var ogrenciBoy = 1.70
var ogrenciBasharf = "A"
var ogrenciDevamEdiyorMu = false

print(ogrenciAd)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)

var urun_id:Int = 3416
var urun_ad:String = "Kol Saati"
var urun_adet:Int = 100
var urun_fiyat:Double = 149.99
var urun_marka:String = "Rolex"

print("Ürün id    : \(urun_id)")
print("Ürün ad    : \(urun_ad)")
print("Ürün adet  : \(urun_adet)")
print("Ürün fiyat : \(urun_fiyat)₺")
print("Ürün marka : \(urun_marka)")


//Constant - Sabit
var sayi = 10
print(sayi)
sayi = 99
print(sayi)

let numara = 100
print(numara)
//numara = 200

// Tür Dönüşümü

// Sayısaldan - sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

//Sayısaldan - metine
var sonuc3 = String(i)//"42"
var sonuc4 = String(d)//"56.78"
print(sonuc3)
print(sonuc4)

//metinden - sayısala
var yazi = "34T"
if let sonuc5 = Int(yazi){// optional binding
    print(sonuc5)
}else{
    print("Dönüşüm hatası")
}


