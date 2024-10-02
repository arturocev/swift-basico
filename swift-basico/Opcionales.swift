//
//  Opcionales.swift
//  swift-basico
//
//  Created by user234563 on 10/2/24.
//

import Foundation

func opcionales()
{
    var numero: Float?
    numero = 4
    if numero == nil
    {
        print("No hay numero")
    }
    else
    {
        print(numero!)
    }
    
    print(numero ?? 0) //Las dos interrogaciones te permiten poner un valor por defecto
}
