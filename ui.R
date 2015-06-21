library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Height Prediction for Sons"),
  sidebarPanel(
    h4("Enter the height of father (unit inch):"),
    textInput(inputId="fheight",label = ""),
    submitButton("Submit"),
    br(),
    br(),
    
    h4("Predicted Results  (unit inch):"),
    p('The predicted height of son:'),
    textOutput('sheight'),
    p('Lower bound of 95% confidence interval:'),
    textOutput('lwr'),
    p('Upper bound of 95% confidence interval:'),
    textOutput('upr')
  ),
  mainPanel(
    h3('Prediction Tool Information'),
    
    p("This is prediction tool to son\'s height based on father\'s height. 
Just enter the father\'s in the input field on th upper left side, hit the submit button. 
The predicted son\'s height, as well as the lower and upper bound of 
95% conficdence interval will be displayed on the lower left site.
    "),
    
    p("This prediction is using linear regression model.  
      The data used to build this prediction model 
      is the dataset father.son from UsingR package."),
    
    p("Make sure that you enter a numeric value for father\'s height, 
      otherwise NA will displayed in the out fields.")
  )
))