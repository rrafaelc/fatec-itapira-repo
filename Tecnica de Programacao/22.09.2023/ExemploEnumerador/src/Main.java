public class Main {
    public static void main(String[] args) {
        Tarefa tarefa1 = new Tarefa();
        Tarefa tarefa2 = new Tarefa();
        tarefa1.setDescricao("Elicitar requisitos");
        tarefa1.setMesTarefa(Meses.Setembro);
        tarefa2.setDescricao("Apresentar projeto");
        tarefa2.setMesTarefa(Meses.Novembro);
    }
}