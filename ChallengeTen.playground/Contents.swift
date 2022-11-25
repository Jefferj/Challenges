import UIKit

//0,1,1,2,3,5,8,13

var numZero = 0
var numOne = 1

(1...50).forEach { _ in
    let fib = numZero + numOne
    numZero = numOne
    numOne = fib
}


