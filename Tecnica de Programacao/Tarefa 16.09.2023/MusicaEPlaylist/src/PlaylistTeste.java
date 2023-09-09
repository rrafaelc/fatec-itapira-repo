import java.util.Scanner;

public class PlaylistTeste {
    Musica musica = new Musica();
    public static void main(String[] args) {
        PlaylistTeste playlistTeste = new PlaylistTeste();

        playlistTeste.execCadastro();
        playlistTeste.execConsulta();
    }

    public void execCadastro() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o nome da música: ");
        musica.setNome(sc.nextLine());
        System.out.print("Digite o artista da música: ");
        musica.setArtista(sc.nextLine());
        System.out.print("Digite a duração da música: ");
        musica.setDuracao(Double.parseDouble(sc.nextLine()));
        System.out.print("Digite o genero da música: ");
        musica.setGenero(sc.nextLine());
    }

    public void execConsulta() {
        musica.imprimir();
    }
}
