programa
{
	inclua biblioteca Tipos 
	cadeia nome
   	real saldo = 150.00// Float
	inteiro extrato[100]
	inteiro qtdeExtrato = 0

   	funcao inicio(){
		escreva("digite seu nome ")
		leia(nome)
		escreva("Olá! " + nome)
		operarBanco()
   	}

	funcao operarBanco() {
		inteiro opcao
		escreva("\n Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. ver Extrato\n")
		escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
		escreva("5. fazerTransferência\n")
		escreva("6. Sair\n")
		leia(opcao)

		escreva(" A opção selecionada foi: " +opcao + "\n")

    		escolha(opcao){
    			caso 1: verSaldo() 
    			pare
    			caso 4: fazerDeposito()
    			pare
    			caso 3: fazerSaque()
    			pare
    			caso 2: verExtrato()
    			pare
    			caso 5:fazerTransferencia()
    			pare
    			caso 6:sair()
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

		pedirSenha()
		
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
		
		pedirSenha()
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
		pedirSenha()
		
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
	pedirSenha()
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
		escreva(nome + " Obrigado por acessar nosso Banco! Até Breve! ")
	}

	funcao pedirSenha(){
		inteiro senha
		escreva("digite sua senha ")
		leia(senha)
		se(senha != 3589){
			escreva("senha invalida\n")
			pedirSenha()
		}
	
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
 * @POSICAO-CURSOR = 81; 
 * @DOBRAMENTO-CODIGO = [45, 50, 70, 90, 109, 128, 132, 143];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */