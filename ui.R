library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Hello Shiny!"),
  sidebarPanel(
    textInput(inputId="fheight", label = "The height of father in inch:"),
    textInput(inputId="text2", label = "Input Text2"),
    submitButton("Submit")
  ),
  mainPanel(
    p('The predicted height of son in inch'),
    textOutput('sheight'),
    p('Output text2'),
    textOutput('text2'),
    p('Output text3'),
    textOutput('text3'),
    p('Outside text'),
    textOutput('text4'),
    p('Inside text, but non-reactive'),
    textOutput('text5')
  )
))