import UIKit



/*
 Enunciado: imprimir todos los números del 1 al 100 y decir cuál es primo y cuál no es primo*/

for i in 2...100 {
    var prime = true
    var divisor = 2
    while divisor < i {
        if i % divisor == 0 {
            prime = false
            break
        }
        divisor += 1
    }
    prime ? print("\(i) is prime ") : print("\(i) is not prime")
}

