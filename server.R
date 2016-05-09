library(shiny)

bmi <- function(height,weight) (weight/ (height*height))*10000

shinyServer(
  function(input, output){
    output$oheight <- renderPrint({input$height})
    output$oweight <- renderPrint({input$weight})
    output$obmi <- renderPrint({bmi(input$height,input$weight)})
  }
)