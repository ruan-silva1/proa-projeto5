programa
{
	
   	real saldo = 150.00// Float
	inteiro extrato[100]
	inteiro qtdeExtrato = 0

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
		escreva("4. veExtrato\n")
		escreva("5. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    		escolha(opcao){
    			caso 1: verSaldo() 
    			pare
    			caso 2: fazerDeposito()
    			pare
    			caso 3: fazerSaque()
    			pare
    			caso 4: verExtrato()
    			pare
    			caso 5:erro()
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
			extrato[qtdeExtrato] = deposito
			qtdeExtrato++
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	        escreva("Operaçãio nao realizadaã.\n")
	        fazerSaque()
		}
		senao se(saque >= saldo){
			escreva("Operacao nao realizada")
	        	fazerSaque()
		}

			saldo = saldo - saque
			extrato[qtdeExtrato] = - saque
			qtdeExtrato++
			verSaldo()
		
	}

	funcao erro() {
		escreva("Opção Inválida")
		inicio()
	}

	funcao verExtrato(){
		se(qtdeExtrato==0){
			escreva("não hã registro")
			retorne
		}
		para(inteiro i=0; i<=qtdeExtrato; i++){
		escreva(extrato[i] + "\n")
		i++
		}
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
 * @POSICAO-CURSOR = 1753; 
 * @DOBRAMENTO-CODIGO = [42, 88];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */