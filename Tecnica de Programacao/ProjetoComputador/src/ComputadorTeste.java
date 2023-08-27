public class ComputadorTeste {
    public static void main(String[] args) {
        Computador hp, ibm;
        hp = new Computador();
        hp.marca = "HP";
        hp.cor = "Azul";
        hp.preco = 1000;
        hp.modelo = "123";
        hp.numeroSerie = 123;
        hp.imprimir();
        hp.calcularValor();
        hp.imprimir();

        ibm = new Computador();
        ibm.marca = "IBM";
        ibm.cor = "Branco";
        ibm.preco = 1000;
        ibm.modelo = "456";
        ibm.numeroSerie = 456;
        ibm.imprimir();
        ibm.calcularValor();
        ibm.imprimir();

        int resposta = ibm.alterarValor(2000);

        if (resposta == 1) {
            System.out.println("Valor da marca " + ibm.marca + " foi alterado");
        } else if (resposta == 0) {
            System.out.println("Valor da marca " + ibm.marca + " não foi alterado");
        }
        ibm.imprimir();
    }
}