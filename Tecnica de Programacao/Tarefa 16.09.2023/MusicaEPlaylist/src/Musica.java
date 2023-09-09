public class Musica {
    private String nome;
    private String artista;
    private double duracao;
    private String genero;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public double getDuracao() {
        return duracao;
    }

    public void setDuracao(double duracao) {
        this.duracao = duracao;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void imprimir() {
        System.out.println("nome = " + nome);
        System.out.println("artista = " + artista);
        System.out.println("duracao = " + duracao);
        System.out.println("genero = " + genero);
    }
}