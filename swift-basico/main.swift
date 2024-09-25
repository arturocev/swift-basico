/*
var num = 2
print(num)
*/

//principalmente las variables las ponemos como constantes

print("Hola, ¿cómo te llamas?: ")

//Estructura de una función que devuelve un booleano y recibe un string
func tieneCaracteresEspeciales(texto: String) -> Bool
{
    let especiales = "!¡$%/()?¿+-*,.;:{}[]"
    for letra in texto {
        for especial in especiales {
            if letra == especial {
                return true
            }
        }
    }
    return false
}

var nombre = readLine()!
var nombreIncorrecto = false
repeat {
    if nombre.count > 10 //Máximo 10 letras
    {
        print("ERROR: nombre demasiado largo")
        nombreIncorrecto = true
        nombre = readLine()!
    } else if nombre.first!.isNumber //No empezar por número
    {
        print("ERROR: el nombre no puede empezar por número")
        nombreIncorrecto = true
        nombre = readLine()!
    }
    else if tieneCaracteresEspeciales(texto: nombre) //Sin caracteres especiales
    {
        print("ERROR: el nombre no puede contener caracteres especiales")
        nombreIncorrecto = true
        nombre = readLine()!
    }
    else
    {
        nombreIncorrecto = false
    }
} while nombreIncorrecto
print("Hola", nombre)
