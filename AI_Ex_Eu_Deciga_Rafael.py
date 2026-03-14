class CriptoMath:
    @staticmethod
    def exponenciacion_modular(base, exponente, modulo):
        resultado = 1
        base = base % modulo
        
        while exponente > 0:
            if exponente % 2 == 1:
                resultado = (resultado * base) % modulo
            
            exponente = exponente // 2
            base = (base * base) % modulo
            
        return resultado

if __name__ == "__main__":
    herramientas = CriptoMath()
    
    # Valores de la práctica
    base = 2
    exponente = 1234
    modulo = 789
    
    resultado = herramientas.exponenciacion_modular(base, exponente, modulo)
    print(resultado)