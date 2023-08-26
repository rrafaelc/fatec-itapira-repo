/**
 * @author rafael
 * @since  2023 Aug
 * Classe Main: Exemplo da aula do dia 25 de agosto
 */
public class Main {
    /**
     * Metodo do main: Iniciar o aplicativo
     * @param args
     */
    public static void main(String[] args) {
        String valor = "150";
        int qtd = 2;
        double total = qtd * Double.parseDouble(valor);
        System.out.println("Valor total: " + total);

        double x = 1500.0;
        String texto = Double.toString(total);
        System.out.println("Resultado texto: " + texto);

        double conta = 10 / (double)3;
        System.out.println("Conta: " + conta);
    }
}