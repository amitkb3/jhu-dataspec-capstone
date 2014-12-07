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
      tabPanel("Instructions", p("Type stuff in to the text input box on the 'Prediction' tab. Try varying the prediction algorithm using the sidebar controls.")),
      tabPanel("Bibliography", HTML('
        <ol>
          <li><a href="http://cran.r-project.org/web/packages/tm/tm.pdf">http://cran.r-project.org/web/packages/tm/tm.pdf</a></li>
          <li><a href="http://www.slideshare.net/jaganadhg/elements-of-text-mi">http://www.slideshare.net/jaganadhg/elements-of-text-mi</a></li>
          <li><a href="http://beyondvalence.blogspot.com/search/label/text%20mining">http://beyondvalence.blogspot.com/search/label/text%20mining</a></li>
          <li><a href="http://stackoverflow.com/questions/8161167/what-algorithm-i-need-to-find-n-grams">http://stackoverflow.com/questions/8161167/what-algorithm-i-need-to-find-n-grams</a></li>
          <li><a href="http://shiny.rstudio.com/articles/reactivity-overview.html">http://shiny.rstudio.com/articles/reactivity-overview.html</a></li>
          <li><a href="http://stackoverflow.com/questions/21921422/row-sum-for-large-term-document-matrix-simple-triplet-matrix-tm-package">http://stackoverflow.com/questions/21921422/row-sum-for-large-term-document-matrix-simple-triplet-matrix-tm-package</a></li>
          <li><a href="http://stackoverflow.com/questions/17703553/bigrams-instead-of-single-words-in-termdocument-matrix-using-r-and-rweka">http://stackoverflow.com/questions/17703553/bigrams-instead-of-single-words-in-termdocument-matrix-using-r-and-rweka</a></li>
          <li><a href="http://stackoverflow.com/questions/6025051/extracting-indices-for-data-frame-rows-that-have-max-value-for-named-field">http://stackoverflow.com/questions/6025051/extracting-indices-for-data-frame-rows-that-have-max-value-for-named-field</a></li>
          <li><a href="http://stackoverflow.com/questions/24191728/documenttermmatrix-error-on-corpus-argument">http://stackoverflow.com/questions/24191728/documenttermmatrix-error-on-corpus-argument</a></li>
          <li>Creating a hash table: <a href="http://stackoverflow.com/questions/7804816/how-to-create-a-dictionary-hash-table-by-iterating-through-a-column">http://stackoverflow.com/questions/7804816/how-to-create-a-dictionary-hash-table-by-iterating-through-a-column</a></li>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
          <li><a href="http://www.gametheory.net/popular/reviews/Simpsons.html">http://www.gametheory.net/popular/reviews/Simpsons.html</a></li>
        </ol>
                                    ')),
      tabPanel("About", p(HTML('Code can be found at <a href="https://github.com/russennis/jhu-dataspec-capstone">https://github.com/russennis/jhu-dataspec-capstone</a>.')), p(HTML('The "Rock Paper Scissors" algorithm is trivial, and a nod to <a href="http://www.gametheory.net/popular/reviews/Simpsons.html">The Simpsons</a>')))
    )
  )
))