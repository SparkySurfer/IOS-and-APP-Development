import UIKit

func add(n1:Int, n2: Int) {
    print(n1 + n2)
}

func subtract(n1:Int, n2:Int){
    print(n1-n2)
}

func multiply(n1:Int, n2:Int){
    print(n1*n2)
}

func divide(n1:Int, n2:Int){
    print(n1/n2)
}


add(n1: 1, n2: 2)
subtract(n1: 3, n2: 4)
multiply(n1: 3, n2: 3)
divide(n1: 3, n2: 3)


func greetings(name: String) -> Bool {
    if name == "Connor" || name == "Nicole"{
        return true
    } else {
        return false
    }
}

greetings(name: "Connor")

var doorShouldOpen = greetings(name: "Oakley")

print(doorShouldOpen)

func isOdd(n:Int) -> Bool {
    if n % 2 == 1 {
        return true
    } else {
        return false
    }
    }



