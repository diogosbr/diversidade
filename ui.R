# Define UI for data upload app ----
ui <- fluidPage(
  # App title ----
  titlePanel("Diversidade"),
  helpText("Cálculo dos índices de diversidade de espécies"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    # Sidebar panel for inputs ----
    sidebarPanel(
      # Input: Select a file ----
      fileInput(
        "file1",
        "Importar arquivo .csv",
        multiple = TRUE,
        accept = c("text/csv",
                   "text/comma-separated-values,text/plain",
                   ".csv")
      ),

      # Horizontal line ----
      tags$hr(),

      # Input: Checkbox if file has header ----
      checkboxInput("header", "Cabeçalho", TRUE),

      # Input: Select separator ----
      radioButtons(
        "sep",
        "Separador",
        choices = c(
          "Ponto e vírgula" = ";",
          "Vígula" = ",",
          "Tabulação" = "\t"
        ),
        selected = ";"
      ),

      # Input: Select quotes ----
      # radioButtons(
      #   "quote",
      #   "Definição de texto:",
      #   choices = c(
      #     "Ausente" = "",
      #     "Aspas duplas" = '"',
      #     "Aspas simples" = "'"
      #   ),
      #   selected = '"'
      # ),

      # Horizontal line ----
      tags$hr(),

      # Input: Select number of rows to display ----
      radioButtons(
        "disp",
        "Modo de exibição",
        choices = c(
          "Mostrar somente as primeiras linhas" = "head",
          "Mostrar todos os registros" = "all"
        ),
        selected = "head"
      ),

      # Horizontal line ----
      tags$hr(),

      radioButtons(
        "base",
        "Base de logaritmo usada no índice de Shannon",
        choices = c(
          "Bits/indv." = "2",
          "Nats/indv." = "exp(1)",
          "Decits/indv." = "10"
        )

      ) ,
      actionButton("btn_calcular", "Calcular!")
    ),

    # Main panel for displaying outputs ----
    mainPanel(tabsetPanel(
      tabPanel("Entrada de dados",

               tableOutput("input_data")),
      tabPanel("Resultado",
               tableOutput("results"))
    ))
  )
)