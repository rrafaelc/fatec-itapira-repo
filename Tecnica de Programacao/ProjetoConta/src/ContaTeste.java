import java.util.Scanner;

public class ContaTeste {
    Conta cc = new Conta();


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ContaTeste contaTeste = new ContaTeste();

        final String ANSI_RED = "\u001B[31m";
        final String ANSI_RESET = "\u001B[0m";
        final String ANSI_YELLOW = "\u001B[33m";

        String continua;
        double opcao;
        int depositou = 0;
        boolean continuar = true;

        System.out.println("Antes de continuar vamos cadastrar sua conta");
        contaTeste.execCadastrar();

        while (continuar) {
            do {
                System.out.println("\nEscolha as opções");
                System.out.println("1 para sacar");
                System.out.println("2 para depositar");
                System.out.println("3 para consultar");
                System.out.print("Opção: ");
                opcao = Double.parseDouble(sc.nextLine());
                System.out.println();

                if (opcao != 1 && opcao != 2 && opcao != 3) {
                    System.out.println(ANSI_RED + "Opção inválida" + ANSI_RESET);
                    continue;
                }

                if (opcao == 1) {
                    if (depositou == 1) {
                        contaTeste.execSacar();
                        contaTeste.execConsultar();
                    } else {
                        System.out.println(ANSI_YELLOW + "Antes de sacar realize um depósito" + ANSI_RESET);
                    }
                }

                if (opcao == 2) {
                    depositou = 1;
                    contaTeste.execDepositar();
                    contaTeste.execConsultar();
                }

                if (opcao == 3) {
                    contaTeste.execConsultar();
                }

            } while (opcao != 1 && opcao != 2 && opcao != 3);


           do{
                System.out.print("\nDeseja continuar? (s/n): ");
                continua = sc.nextLine();

                if (!"n".equalsIgnoreCase(continua) && !"s".equalsIgnoreCase(continua)) {
                    System.out.println(ANSI_RED + "Opção inválida" + ANSI_RESET);
                }
            } while (!"n".equalsIgnoreCase(continua) && !"s".equalsIgnoreCase(continua));

            if ("n".equalsIgnoreCase(continua)) {
                continuar = false;
            }
        }

        System.out.println("Programa encerrado");
    }

    public void execCadastrar() {
        Scanner sc = new Scanner(System.in);
        String nome;
        System.out.print("Digite seu nome: ");
        nome = sc.nextLine();
        cc.nomeCliente = nome;
        cc.agencia = "1234";
        cc.conta = "123456789";
        cc.saldo = 0;
        System.out.println("Contra criada com sucesso!");
    }

    public void execConsultar() {
        System.out.println();
        cc.imprimir();
    }

    public void execSacar() {
        final String ANSI_RESET = "\u001B[0m";
        final String ANSI_RED = "\u001B[31m";
        final String ANSI_GREEN = "\u001B[32m";

        Scanner sc = new Scanner(System.in);
        double valor;

        System.out.print("Digite o valor para saque: ");
        valor = Double.parseDouble(sc.nextLine());

        if (cc.sacar(valor) == 1) {
            System.out.println(ANSI_GREEN + "Saque realizado" + ANSI_RESET);
        } else {
            System.out.println(ANSI_RED + "Saque não realizado" + ANSI_RESET);
        }
    }

    public void execDepositar() {
        Scanner sc = new Scanner(System.in);
        double valor;

        System.out.print("Digite o valor para depositar: ");
        valor = Double.parseDouble(sc.nextLine());

        cc.depositar(valor);
    }
}