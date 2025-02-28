programa
{
	inclua biblioteca Tipos 
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
		escreva("5. fazerTransferência\n")
		escreva("6. Sair\n")
		leia(opcao)

		escreva(" A opção selecionada foi: " +opcao + "\n")

    		escolha(opcao){
    			caso 1: verSaldo() 
    			pare
    			caso 2: fazerDeposito()
    			pare
    			caso 3: fazerSaque()
    			pare
    			caso 4: verExtrato()
    			pare
    			caso 5:fazerTransferencia()
    			pare
    			caso 6:erro()
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
	
		se (saque <= 0 ou saque >=saldo){
	        escreva("Operação nao realizada.\n")
	        fazerSaque()
		}

			saldo = saldo - saque
			extrato[qtdeExtrato] = - saque
			qtdeExtrato++
			verSaldo()
		
	}

	funcao verExtrato(){
		se(qtdeExtrato==0){
			escreva("não hã registro")
			retorne
		}
		para(inteiro i=0; i<qtdeExtrato; i++){
		se(extrato[i] < 0){
		escreva("saida de " + (extrato[i] * (-1)) + "\n")
		}
		senao se(extrato[i] > 0){
		escreva("deposito de " + extrato[i] + "\n")
		}

		
		}
	}

	funcao fazerTransferencia(){
	inteiro numeroDaConta,valor
	escreva("digite o numero da conta ")
	leia(numeroDaConta)
	escreva("Quantos reais você quer transferir? ")
	leia(valor)
	se(valor <= 0 ou valor>saldo){
		escreva("operacao nao pode ser realizada!")
		fazerTransferencia()
		}
	senao{
		saldo -= valor
		extrato[qtdeExtrato] = - valor
		qtdeExtrato++
		verSaldo()	
	}
	}
	
	funcao sair(){
		escreva("Programa encerrado")
	}

	funcao erro() {
		escreva("Opção Inválida")
		inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2384; 
 * @DOBRAMENTO-CODIGO = [45, 87, 104];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */