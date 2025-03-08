package org.example

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
var saldo = 150.0
var extrato = DoubleArray(100)
var qtdeExtrato = 0
var opcao = 0
fun main(){
    println("qual seu nome")
    val nome = readln()
    println("olá, $nome!")
    operarBanco()
}

fun operarBanco() {
    Thread.sleep(2000)
    println("escolha uma opção")
    println("1. Ver saldo")
    println("2. ver Extrato")
    println("3. Fazer saque")
    println("4. Fazer depósito")
    println("5. fazerTransferência")
    println("6. Sair")
    opcao = readln().toInt()
    println("a opcao selecionada foi $opcao")
    when(opcao){
        1 -> mostrarSaldo()
        2 -> mostrarExtrato()
        3 -> fazerSaque()
        4 -> fazerDeposito()
        5 -> fazerTransferencia()
        6 -> encerrarPrograma()
        else -> println("escolha a opcao correta!")
    }

    operarBanco()
}

fun mostrarSaldo(){
    println("seu saldo é $saldo")
}

fun validarSenha(){
    println("coloque a senha para realizar a opcao $opcao")
    val senha = readln()
    if(senha != "3589"){
        println("senha invalida")
        validarSenha()
    }
}

fun fazerDeposito(){
    validarSenha()
    println("escolha um valor para deposito")
    val valor = readln().toDouble()
    if(valor <=0){
        println("numero invalido!")
        fazerDeposito()
    }else{
        saldo+=valor
    }
    extrato[qtdeExtrato] = valor
    qtdeExtrato++
    mostrarSaldo()
}

fun fazerSaque(){
    validarSenha()
    println("escolha um valor para saque")
    val saque = readln().toDouble()
    if(saque <= 0 || saque > saldo){
    println("operacao nao autorizada!")
        fazerSaque()
    }
    else{
        saldo -= saque
        extrato[qtdeExtrato] = - saque
        qtdeExtrato++
        mostrarSaldo()
    }
}

fun mostrarExtrato(){
    validarSenha()
    var i=0
    if(qtdeExtrato == 0){
        println("nenhuma operacao realizada até o momento!")
    }
    while(i<qtdeExtrato){
        if(extrato[i]<0){
            val resultado = extrato[i] * (-1)
            println("saida de $resultado")
        }
        else{
            println("deposito de ${extrato[i]}")
        }
        i++
    }
}

fun fazerTransferencia(){
    validarSenha()
    println("Qual numero da conta para deposito?")
    val numeroConta = readln()
    if(numeroConta.length < 4){
        println("numero da conta invalido!")
        fazerTransferencia()
    }
    println("qual valor da transferencia")
    val valor = readln().toDouble()
    if(valor <= 0 || valor > saldo){
        println("operacao nao pode ser realizada")
    }
    else{
        saldo-=valor
        extrato[qtdeExtrato] = - valor
        qtdeExtrato++
        mostrarSaldo()
    }
}

fun encerrarPrograma(){
    println("programa finalizado")
    return
}