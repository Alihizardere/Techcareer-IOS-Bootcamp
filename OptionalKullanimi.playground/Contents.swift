import UIKit

//Optional

var str = "Hello"
//Tanımlama
var mesaj:String?

 = "Merhaba"

if mesaj != nil {
    print(mesaj!)//unwrapped
}else{
    print("Mesaj nildir")
}

//Optional binding

if let temp = mesaj {//nill ise false değilse true
    print(temp)// otomatik unwrapped
}else{
    print("Mesaj nildir")
}

if var temp = mesaj {//nill ise false değilse true
    print(temp)// otomatik unwrapped
    temp = "Nasılsın"
    print(temp)
}else{
    print("Mesaj nildir")
}
