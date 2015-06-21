library(shiny)
library(UsingR)
data(father.son)

modFit <<- lm(sheight~fheight, data=father.son)

shinyServer(
  function(input, output) {
    y <- reactive(predict(modFit, newdata=data.frame(fheight=as.numeric(input$fheight)),
                          interval="confidence"))
 #   y <- reactive(as.numeric(input$fheight) +1)
    output$sheight <- renderText({class(y)})
    output$text2 <- renderText({y()[1]})
    output$text3 <- renderText({y()[2]})
    output$text4 <- renderText({y()[3]})
    output$text5 <- renderText({y()[3]})
  }
)
