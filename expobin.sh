#!/bin/bash
python3 AI_Ex_Eu_Deciga_Rafael.py
import sys

class CriptoMath:
    @staticmethod
    def exponenciacion_modular(base, exponente, modulo):
        resultado = 1
        base = base % modulo 
        
        while exponente > 0:
            if (exponente % 2) == 1:
                resultado = (resultado * base) % modulo
            
            exponente = exponente // 2
            base = (base * base) % modulo
            
        return resultado

if __name__ == "__main__":
    # Lee todos los datos que el bot envía por consola de un solo golpe
    entrada = sys.stdin.read().split()
    
    # Nos aseguramos de que llegaron los 3 valores (base, exponente, módulo)
    if len(entrada) >= 3:
        base = int(entrada[0])
        exponente = int(entrada[1])
        modulo = int(entrada[2])
        
        herramientas = CriptoMath()
        resultado = herramientas.exponenciacion_modular(base, exponente, modulo)
        
        # Imprime ÚNICAMENTE el resultado, sin texto extra
        print(resultado)