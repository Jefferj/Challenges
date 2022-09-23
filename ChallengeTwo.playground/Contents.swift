import UIKit

/*  * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Bool) según sean o no anagramas.
* Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
* NO hace falta comprobar que ambas palabras existan.
* Dos palabras exactamente iguales no son anagrama. */


func isAnagram(wordA: String, wordB: String) -> Bool {
    return wordA.lowercased() == wordB.lowercased() ? false: wordA.lowercased().sorted().elementsEqual(wordA.lowercased().sorted())
}

print(isAnagram(wordA: "Amor", wordB: "Roma"))
