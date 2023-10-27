import UIKit

//Set - HashSet
var meyveler = Set<String>()

//veri ekleme
meyveler.insert("Elma")
meyveler.insert("Kiraz")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elması")// aynı elemandan tekrar eklemiyor bu yüzden farklı eleman ekliyoruz
print(meyveler)

print("Boyut  : \(meyveler.count)")
print("Boş kontrol : \(meyveler.isEmpty)")

for meyve in meyveler {
    print("Sonuç : \(meyve)")
}

for (indeks, meyve) in meyveler.enumerated(){
    print("\(indeks). -> \(meyve)")
}
meyveler.remove("Muz")
print(meyveler)

var indeks = meyveler.firstIndex(of: "Elma")
meyveler.remove(at:indeks!)
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Dictionary - Map - Hashmap
//json veri modelide key value ilişkisi ile çalışır
var iller = [Int:String]()

//veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

//veri güncelleme
iller[16] = "Yeni Bursa"
print(iller)

//veri okuma
let il = iller[34]!
print(il)

for (anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}
//veri silme
iller.removeValue(forKey: 16)
print(iller)

iller.removeAll()
print(iller)
