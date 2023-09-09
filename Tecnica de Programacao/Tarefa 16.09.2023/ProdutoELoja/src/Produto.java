public class Produto {
    private String nome;
    private String descricao;
    private int quantidadeEmEstoque;
    private double precoUnitario;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getQuantidadeEmEstoque() {
        return quantidadeEmEstoque;
    }

    public void setQuantidadeEmEstoque(int quantidadeEmEstoque) {
        this.quantidadeEmEstoque = quantidadeEmEstoque;
    }

    public double getPrecoUnitario() {
        return precoUnitario;
    }

    public void setPrecoUnitario(double precoUnitario) {
        this.precoUnitario = precoUnitario;
    }

    public void imprimir() {
        System.out.println("nome = " + nome);
        System.out.println("descricao = " + descricao);
        System.out.println("quantidadeEmEstoque = " + quantidadeEmEstoque);
        System.out.println("precoUnitario = " + precoUnitario);
    }
}
