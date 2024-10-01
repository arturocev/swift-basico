// EJERCICIO 1

/*
 

 
 func hacerMedia(numeros: [Int]) -> Int { //EJERCICIO 3 (Función añadida en el ejercicio 1)
    var suma = 0
    for i in numeros {
        suma += numeros[i-1]
    }
    let media = suma/5
    return media
}

var numeros = [Int]()
while numeros.count != 5
{
    print("Porfavor, escribe un número: ")
    let numero = readLine()!
    if numero.isEmpty
    {
        print("ERROR: no has introducido nada")
    }
    else if numero.first?.isNumber == false
    {
        print("ERROR: no has introducido un número")
    }
    else if numero.count > 1
    {
        print("ERROR: debes introducir solo un valor")
    } else
    {
        let numero2: Int = Int(numero)!
        numeros.append(numero2)
    }
}
var media = hacerMedia(numeros: numeros)
print(media)

 **/


 
/*
// EJERCICIO 2
var continuarJugando = true
var bala = 0
var numeroJugador = 1
repeat {
    print("¿Quieres jugar a la ruleta rusa? [y] [n]: ")
    let respuesta = readLine()!
    if respuesta == "y"
    {
        
        if bala == 0 {
            bala = Int.random(in: 1..<5)
        }
        
        print("El número que mata es: ", bala)
        
        print("Pulsa enter para continuar: ")
        print(readLine()!)
    
        let disparo = Int.random(in: 1..<5)
        
        if disparo == bala
        {
        
            print("El número que ha salido al jugador\(numeroJugador)  es: \(disparo). Has perdido")
        }
        else
        {
            if numeroJugador == 1
            {
                numeroJugador = 2
            }
            else
            {
                numeroJugador = 1
            }
            print("El número que ha salido al jugador\(numeroJugador)  es: \(disparo). Has ganado")
        }
        
    }
    else if respuesta == "n"
    {
        continuarJugando = false
    }
    else
    {
        print("ERROR: responde con [y] o [n]")
    }
} while continuarJugando == true
 
 
 **/

//EJERCICIO 4

//EJERCICIO 4
func ponerAsteriscos(palabra: String) -> String {
    var convertirPalabra = palabra
    for i in 1...palabra.count {
        if i == 1 && palabra.first == "j" {
            convertirPalabra = "j"
        } else if i == 1 && palabra.first == "p"
        {
            convertirPalabra = "p"
        }
        else if i == 1 && palabra.first == "m"
        {
            convertirPalabra = "m"
        }
        else
        {
            convertirPalabra = convertirPalabra+"*"
        }
    }
    return convertirPalabra
}


print("Escribe una frase: ")
var frase : String = readLine()!

var primeraPalabra = frase.split(separator:" ")

for i in 1...primeraPalabra.count{
    ponerAsteriscos(palabra: String (primeraPalabra[i-1]))
}

var convertirFrase = primeraPalabra.joined(separator: " ")
print(convertirFrase)
