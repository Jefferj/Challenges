import UIKit

/* Enunciado: Hacer un reloj de 24 horas con intervalo de cada 3*/

let intervalThreeHour = 3
let hourOfDay = 24

for tickMark in stride(from: 0, to: 25, by: intervalThreeHour){
    if tickMark <= 9 {
        print("\(tickMark):00 am")
    }else{
        print("\(tickMark):00 pm")
    }
}
        
