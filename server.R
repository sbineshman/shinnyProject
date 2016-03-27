#install.packages("shiny")
library(shiny)

MontlyMRG_amt <- function(Mortgage_amt, Interest_Rate, Time) {
        returnValue <- "Nothing entered yet."

        P <- Mortgage_amt
        i <- Interest_Rate
        i <-  i/(100* 12) 
        n <- Time
        n <- 12 * n

        #mortgage Forumula
        M <- P * ( i * ((1 + i) ^ n) ) / ( (1 + i) ^ n - 1)
        
        returnValue <- M
        returnValue

}

shinyServer( 
        function(input, output) {
                output$inputValue <- renderPrint({as.numeric(input$Mortgage_amt)})
                output$outputValue <- renderText({
                        if (input$goButton == 0) "You have not entered"
                        else if (input$goButton >= 1) 
                                MontlyMRG_amt(as.numeric(input$Mortgage_amt), as.numeric(input$Interest_Rate),as.numeric(input$Time))
                })
        }
)