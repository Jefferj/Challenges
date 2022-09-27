import UIKit

/*Enunciado: Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */

print(reverse(text: "Hola mundo"))

func reverse(text: String) -> String {
    let textCount = text.count - 1
    var reversedText = ""
    let textArray = Array(text)
    for index in 0...textCount {
        reversedText += "\(textArray[textCount - index])"
    }
    return reversedText
}
