import UIKit

// Karşılaştırma Operatörleri
var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b)")
print("a != b : \(a != b)")
print("a > b  : \(a > b)")
print("a >= b : \(a >= b)")
print("a < b  : \(a < b)")
print("a <= b : \(a <= b)")


print("a > b || x > y : \(a > b || x > y)")// Or(veya)

print("a > b && x > y : \(a > b && x > y)")// And(ve)

// if kullanımı

var yas = 17
var isim = "Mehmet"

if yas >= 18 {
    print("Reşitsiniz")
}else{
    print("Reşit değilsiniz")
}

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}else if isim == "Mehmet" {
   print("Merhaba Mehmet")
}else{
    print("Tanınmayan kişi")
}


var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hoşgeldin")
}else{
    print("Hatalı giriş")
}

var sonuc = 20

if sonuc == 10 || sonuc == 20{
    print("Sonuç 10 veya 20 dir")
}else{
    print("Sonuc 10 veya 20 değildir")
}

var z = 10
var t = 20

z == t ? print("Eşittir"): print("Eşit değildir")// Ternary

//Switch

var gun = 9

switch gun {
    case 1:print("Pazartesi")
    case 2:print("Salı")
    case 3:print("Çarşamba")
    case 4:print("Perşembe")
    case 5:print("Cuma")
    case 6:print("Cumartesi")
    case 7:print("Pazar")
    default: print("Böyle bir gün yok")
}

//Loop - Döngüler

//for döngüsü

for i in 1...3{
    print("Döngü 1 : \(i)")
}

// 10 ile 20 arasında 5'er artış

for i in stride(from: 10, through: 20, by: 5){
    print("Döngü 2 : \(i)")
}

// 20 ile 10 arasında 5'er azalış

for i in stride(from: 20, through: 10, by: -5){
    print("Döngü 3 : \(i)")
}

// while döngüsü
var sayac = 1

while sayac < 4 {
    print("Döngü 4 : \(sayac)")
    sayac += 1 // sayac = sayac + 1
}

//Break - Continue

for i in 1...5 {
    if i == 3 {
        break
    }
    print("Döngü 5 : \(i)")
}

for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Döngü 6 : \(i)")
}
