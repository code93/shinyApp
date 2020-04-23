library(shiny)
library(bigchess)

shinyUI(fluidPage(

    titlePanel("Top opening moves"),

    fluidRow(
        column(3,
               selectInput("select", h3("Select Player"), 
                           choices = list("Carlsen" = 1, "Kasparov" = 2
                                           ), selected = 1),
            br(),
                   submitButton("Submit")
        ),
     
    ),
    
    
    mainPanel(
        textOutput("selected_var"),
        plotOutput("newHist")
    )
    
))
