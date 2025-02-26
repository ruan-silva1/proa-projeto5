programa
{
	
   	real saldo = 150.00// Float

   	funcao inicio(){
   		cadeia nome
		escreva("digite seu nome ")
		leia(nome)
		escreva("Olá! " + nome)
		operarBanco()
   	}

	funcao operarBanco() {
		inteiro opcao
		escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Fazer depósito\n")
		escreva("3. Fazer saque\n")
		escreva("4. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    		escolha(opcao){
    			caso 1: verSaldo() 
    			pare
    			caso 2: fazerDeposito()
    			pare
    			caso 3: fazerSaque()
    			pare
    			caso 4: sair()
    			pare
    			caso contrario :erro()
    		}
    	}
    		
	funcao verSaldo(){
	    escreva("Seu saldo atual é: ", saldo, "\n")
	   operarBanco()
	}
	
	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
		}
		senao se(saque >= saldo){
			escreva("Operacao nao realizada")
	        	fazerSaque()
		}

			saldo = saldo - saque
			verSaldo()
		
	}

	funcao erro() {
		escreva("Opção Inválida")
		inicio()
	}

	funcao sair(){
		escreva("Programa encerrado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 174; 
 * @DOBRAMENTO-CODIGO = [79];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */