package model;

public class Caixa {
    private double saldo;

    public void depositar(double valor){
        if(valor <= 0){
            throw new IllegalArgumentException("Valor indevido");
        }
        saldo += valor;
    }
    public void sacar(double valor){
        if(valor > saldo){
            throw new IllegalArgumentException("Sem saldo suficiente");
        }
        saldo -=valor;
    }

    public double getSaldo() {
        return saldo;
    }
}