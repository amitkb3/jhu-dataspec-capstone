library(shiny)

algorithms <- c('ngram', 'Rock Paper Scissors')
predict <- function(algo, inputText, input) {
  cat('Predicting for', algo, inputText, "\n")
  if ((length(algo) == 0) || (algo == 'ngram')) {
    'the'
  } else if (algo == 'Rock Paper Scissors') {
    if (length(input$rpsPlayer) == 0) {
      sample(c('Rock', 'Paper', 'Scissors'), 1)
    } else if (input$rpsPlayer == 'Bart') {
      "Rock (Good ol' rock. Nuthin' beats that!)"
    } else if (input$rpsPlayer == 'Lisa') {
      'Paper (Bart always plays Rock!)'
    } else {
      sample(c('Rock', 'Paper', 'Scissors'), 1)
    }  
  } else {
    'ERROR'
  }
}

shinyServer(
  function(input, output) {
    inputText <- reactive({input$textInput})
    algoChoice <- reactive({as.character(input$algoChoice)})
    output$algoChoice <- renderUI({
      selectInput('algoChoice', "Prediction Algorithm", algorithms)
    })
    algoOptions <- reactive({
      cat('Choice:', algoChoice(), "\n")
      if ((length(algoChoice()) == 0) || (as.character(algoChoice()) == 'ngram')) {
        cat("Rendering ngram\n")
        selectInput('ngramComplexity', "ngram complexity", c('bigram', 'trigram'))
      } else 
      if (algoChoice() == 'Rock Paper Scissors') {
        cat("Rendering RPS\n")
        selectInput('rpsPlayer', "Player", c('Random', 'Bart', 'Lisa'))
      } else {
        renderText(paste("Unrecognized algorithm", algoChoice()))
      }
    })
    output$algoOptions <- renderUI({algoOptions()})
    output$textOutput <- renderText({
      prediction = predict(algoChoice(), inputText(), input)
      paste0(algoChoice(), " prediction: ", prediction, sep="", collapse="")
    })
  }
)