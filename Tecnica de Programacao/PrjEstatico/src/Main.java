public class Main {
    public static void main(String[] args) {
        Conta conta1, conta2;
        conta1 = new Conta();
        conta2 = new Conta();
        conta1.cpmf = 0.0075;

        conta1.numConta = 10;
        conta1.nomeCliente = "Ze";
        conta1.depositar(1000);
        conta1.sacar(100);
        System.out.println("Saldo:" + conta1.saldo);

        conta2.numConta = 20;
        conta2.nomeCliente = "Maria";
        conta2.depositar(500);
        conta2.sacar(100);
        System.out.println("Saldo:" + conta2.saldo);
    }
}