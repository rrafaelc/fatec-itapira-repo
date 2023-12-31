public class Conta {
    public String conta;
    public String agencia;
    public double saldo;
    public String nomeCliente;

    public int sacar(double valor) {
        if (valor > saldo) {
            return 0;
        }

        saldo -= valor;

        return 1;
    }

    public void depositar(double valor) {
        saldo += valor;
    }

    public void imprimir() {
        System.out.println("conta = " + conta);
        System.out.println("agencia = " + agencia);
        System.out.println("saldo = " + saldo);
        System.out.println("nomeCliente = " + nomeCliente);
    }
}
