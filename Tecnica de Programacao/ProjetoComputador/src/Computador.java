public class Computador {
    public String marca;

    public String cor;

    public String modelo;

    public long numeroSerie;

    public double preco;

    public void imprimir() {
        System.out.println("marca = " + marca);
        System.out.println("cor = " + cor);
        System.out.println("modelo = " + modelo);
        System.out.println("numeroSerie = " + numeroSerie);
        System.out.println("preco = " + preco);
    }

    public void calcularValor() {
        if ("HP".equalsIgnoreCase(marca)) {
            preco += preco * 0.3;
        } else if ("IBM".equalsIgnoreCase(marca)) {
            preco += preco * 0.5;
        }
    }

    public int alterarValor(double valor) {
        if (valor <= 0) {
            return 0;
        }

        preco = valor;
        return 1;
    }
}
