#include <stdio.h>
#include <string.h>

// struct que guarda os dados de um território
struct Territorio {
    char nome[30];   // nome do território
    char cor[10];    // cor do exército
    int tropas;      // quantidade de tropas
};

int main() {
    struct Territorio t[5]; // vetor com 5 territórios
    int i;

    // cadastro dos territórios
    for (i = 0; i < 5; i++) {
        printf("\n--- Cadastro do território %d ---\n", i + 1);

        // lê o nome
        printf("Digite o nome do território: ");
        scanf("%s", t[i].nome);

        // lê a cor
        printf("Digite a cor do exército: ");
        scanf("%s", t[i].cor);

        // lê o número de tropas
        printf("Digite a quantidade de tropas: ");
        scanf("%d", &t[i].tropas);
    }

    // mostra os dados cadastrados
    printf("\n===== Territórios cadastrados =====\n");

    for (i = 0; i < 5; i++) {
        printf("\nTerritório %d:\n", i + 1);
        printf("Nome: %s\n", t[i].nome);
        printf("Cor do exército: %s\n", t[i].cor);
        printf("Tropas: %d\n", t[i].tropas);
    }

    return 0;
}
