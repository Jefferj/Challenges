import UIKit

//Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
// La función recibirá por parámetro sólo UN polígono a la vez.
// Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
// Imprime el cálculo del área de un polígono de cada tipo.



protocol Polygon {
    func area() -> Double
    func printArea()
}

struct Triangle: Polygon {
    let base, height : Double
    func area() -> Double {
        return (base * height) / 2
    }
    func printArea() {
        print("El área del poligono es: \(area())")
    }
}

struct rectangle: Polygon {
    let length, width: Double
    func area() -> Double {
        return length * width
    }
    func printArea() {
        print("El area del rectangulo es: \(area())")
    }
}

struct Square: Polygon {
    let side: Double
    func area() -> Double {
        return side * side
    }
    func printArea() {
        print("El área del cuadrado es: \(area())")
    }
}

func area(polygon: Polygon) -> Double {
    polygon.printArea()
    return polygon.area()
}
