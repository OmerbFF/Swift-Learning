import UIKit

func myFuction() {
    print("my function")
}

myFuction()

//Input & Output & Return

func toplama(x: Int, y: Int) -> Int {
    return x + y
}

let toplamaFonksiyonu = toplama(x: 10, y: 20)
print(toplamaFonksiyonu)

func logicFunction(a: Int, b: Int) -> Bool {
    if a > b {
        return true
    }
    else {
        return false
    }
}
let logic = logicFunction(a: 15, b: 10)
print(logic)
