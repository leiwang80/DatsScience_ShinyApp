library(shiny)
library(UsingR)
data(father.son)

modFit <<- lm(sheight~fheight, data=father.son)

shinyServer(
  function(input, output) {
    y <- reactive(predict(modFit, newdata=data.frame(fheight=as.numeric(input$fheight)),
                          interval="confidence"))

    output$sheight <- renderText({y()[1]})
    output$lwr <- renderText({y()[2]})
    output$upr <- renderText({y()[3]})
  }
)
