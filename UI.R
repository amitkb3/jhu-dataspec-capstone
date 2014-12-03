library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Text Prediction"),
  sidebarPanel(
    h4('Prediction controls'),
    uiOutput('algoChoice'),
    uiOutput('algoOptions')    
    #p('Generates 2D normal data and scatterplots it with an ellipse bounding an expected quantile of plot points'),
    #p('Edit controls to control ellipse parameters and random data generation'),
    #numericInput('nsamples', 'Number of samples', 1000, min = 100, max = 10000, step = 100),
    #sliderInput('a', 'Major axis',value = 2, min = 0.1, max = 3, step = 0.05,),
    #sliderInput('b', 'Minor axis',value = 1, min = 0.1, max = 3, step = 0.05,),
    #sliderInput('theta', 'Angle (Radians)',value = 3.14/8, min = 0, max = 3.14, step = 3.14/100,),
    #sliderInput('aq', 'Area quantile',value = 0.90, min = 0, max = 0.999, step = 0.001,),
    #numericInput('seed', 'Random Seed', 1234, min = 100, max = 10000, step = 1),
    #p('Also includes fit line for ys~xs for generated data. Observe that the fit line is a much closer match for the angle theta when minor axis is small.')
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Prediction", verticalLayout(
        textInput('textInput', "Text Input"),
        textOutput("textOutput"))
      ),
      tabPanel("Instructions", p("Type stuff in")),
      tabPanel("About", p("Made today"))
    )
  )
))