// EJERCICIO 1

/**
 
 
func hacerMedia(numeros: [Int]) -> Int {
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

 */

// EJERCICIO 2
var cant = 0

repeat {
    print("¿Quieres jugar a la ruleta rusa? [y] [n]: ")
    let respuesta = readLine()!
    if respuesta == "y"
    {
        let numeroRandom = Int.random(in: 1..<3)
        print("El número que mata es: ", numeroRandom)
        
        print("Pulsa enter para continuar: ")
        let numeroRandom2 = Int.random(in: 1..<3)
        if numeroRandom2 == numeroRandom
        {
            print("El número que ha salido es: \(numeroRandom2). Has perdido")
        }
        else
        {
            print("El número que ha salido es: \(numeroRandom2). Has ganado")
        }
        
    }
    else if respuesta == "n"
    {
        cant = 1
    }
    else
    {
        print("ERROR: responde con [y] o [n]")
    }
} while cant == 0
