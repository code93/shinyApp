library(shiny)
library(bigchess)

shinyServer(function(input, output) {
    
    output$selected_var <- renderText({

    })
    
    output$newHist <- renderPlot(({
        if(input$select==1){
            f <- system.file("extdata", "Carlsen.gz", package = "bigchess")
        }
        if(input$select==2){
            f <- system.file("extdata", "Kasparov.gz", package = "bigchess")
        }
        data <- read.pgn(f)
        browse_opening(data,movetext="")
    }))
    
    
   
    
})
