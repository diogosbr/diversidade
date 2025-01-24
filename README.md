# diversidade

**Autor:** Diogo S. B. Rocha

**Contato:** [diogosbr@gmail.com](mailto:diogosbr@gmail.com)

## Descrição do Projeto

O **Diversidade** é um projeto desenvolvido para calcular índices de diversidade ecológica, fornecendo ferramentas para análise da biodiversidade em diferentes ecossistemas. 

## Funcionalidades

- **Cálculo de Índices de Diversidade:** Implementa métricas como o Índice de Shannon, Índice de Simpson, entre outros.
- **Análise de Equitabilidade:** Avalia a distribuição uniforme das espécies dentro de uma comunidade.
- **Interface Interativa:** Possui uma interface desenvolvida em Shiny para facilitar a interação do usuário com as ferramentas de análise.

## Tecnologias Utilizadas

- **Linguagem de Programação:** R
- **Bibliotecas:** [shiny](https://cran.r-project.org/web/packages/shiny/index.html), [vegan](https://cran.r-project.org/web/packages/vegan/index.html)

## Instalação e Uso

1. **Pré-requisitos:** Certifique-se de ter o R e o RStudio instalados em sua máquina. As bibliotecas necessárias podem ser instaladas executando:

   ```R
   install.packages("shiny")
   install.packages("vegan")
   ```

2. **Clonando o Repositório:**

   ```bash
   git clone https://github.com/diogosbr/diversidade.git
   ```

3. **Executando a Aplicação:**

   Abra o arquivo `diversidade.Rproj` no RStudio e execute o script `server.R` para iniciar a interface Shiny.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests para melhorias ou correções.

## Licença

Este projeto está licenciado sob a Licença MIT, que permite o uso livre, desde que a autoria seja atribuída ao autor original.
