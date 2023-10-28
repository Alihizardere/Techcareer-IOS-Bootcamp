import UIKit

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray : Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int, pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

class Villa : Ev {
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool, pencereSayisi:Int){
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarmi: true, pencereSayisi: 50)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarmi!)
print(bogazVilla.pencereSayisi!)

//upcasting
// saraydan -> eve dönüşüm
let ev = Saray(kuleSayisi: 3, pencereSayisi: 100) as Ev
//downcasting
// evi -> saraya dönüşüm
let saray = Ev(pencereSayisi: 40) as? Saray //as! de kullanılabilir

//type check
if ev is Ev{
    print("Nesne ev sınıfından türetilmiştir.")
}else{
    print("Nesne ev sınıfından türetilmemiştir.")
}

// Override
class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
}
class Memeli : Hayvan {
    
}
class Kedi : Memeli{
    override func sesCikar() {
            print("Miyav Miyav")
    }
}
class Köpek : Memeli{
    override func sesCikar() {
        print("Hav hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let köpek = Köpek()

hayvan.sesCikar()// kalıtım yok , kendi metoduna erişti
memeli.sesCikar()// kalıtım var , üst sınıfın metoduna erişti
kedi.sesCikar() //Kalıtım var, kendi metoduna erişti
köpek.sesCikar()//Kalıtım var, kendi metoduna erişti

//Protocol - Interface
protocol MyProtocol {
    var degisken:Int {get set}
    
    func metod1()
    func metod2() -> String
}

class classA : MyProtocol{
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
    
}
var deneme = classA()
print(deneme.degisken)
deneme.metod1()
print(deneme.metod2())

//Extension
extension Int {
    func carp(sayi:Int) -> Int{
        return self * sayi
    }
}

let sonuc = 5.carp(sayi: 3)
print("Sonuç : \(sonuc)")

//Closure
let ifade = {
    print("Closure çalıştı")
}
ifade()
