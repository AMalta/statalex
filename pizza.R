#install.packages("rsconnect")
library(rsconnect)
library(bslib)
library(shiny)


ui <- page_sidebar(
  "Meu app",
  
  sidebar = sidebar(
  numericInput(
    "v1",
    "Digite o primeiro valor: ",value = ""
  ),
  numericInput(
    "v2",
    "Digite o segundo valor: ",value = ""
  ),
  
  numericInput(
    "v3",
    "Digite o terceiro valor: ",value = ""
  )
),

plotOutput("pizza")

)

server <- function(input, output, session) {
  output$pizza = renderPlot({
    x = c(input$v1,input$v2,input$v3)
    pie(x)
    
  })
  
}

shinyApp(ui, server)