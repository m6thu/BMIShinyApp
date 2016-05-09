library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('BMI Calculator'),
  sidebarPanel(
    numericInput('height', 'Input your height (cm)', 0, min = 0, max = 300, step = 1),
    numericInput('weight', 'Input your weight (kg)', 0, min = 0, max = 10, step = 1)
  ),
  
  mainPanel(
    h4('Height entered'),
    verbatimTextOutput("oheight"),
    h4('Weight entered'),
    verbatimTextOutput("oweight"),
    h3('Your BMI is'),
    verbatimTextOutput("obmi")
  )
  
))