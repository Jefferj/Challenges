import UIKit


/*Enunciado
Una contraseña se considera segura si su longitud es mayor o igual a 10, tiene al menos una letra (A-Z, a-z), tiene al menos un dígito (0-9), y tiene al menos un símbolo diferente a letras o dígitos.
Escriba un programa que reciba como entrada una cadena y decida si esta corresponde a una contraseña segura.*/

func isValidated(_ password: String) -> Bool {
    var lowerCaseLetter: Bool = false
    var upperCaseLetter: Bool = false
    var digit: Bool = false
    var specialCharacter: Bool = false

    if password.count  >= 10 {
        for char in password.unicodeScalars {
            if !lowerCaseLetter {
                lowerCaseLetter = CharacterSet.lowercaseLetters.contains(char)
            }
            if !upperCaseLetter {
                upperCaseLetter = CharacterSet.uppercaseLetters.contains(char)
            }
            if !digit {
                digit = CharacterSet.decimalDigits.contains(char)
            }
            if !specialCharacter {
                specialCharacter = CharacterSet.punctuationCharacters.contains(char)
            }
        }
        if specialCharacter || (digit && lowerCaseLetter && upperCaseLetter) {
           
            return true
        }
        else {
            return false
        }
    }
    return false
}
let isVaildPass:Bool = isValidated("Test**00+-")
print(isVaildPass)
