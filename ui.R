#install.packages("shiny")
library(shiny)

shinyUI( pageWithSidebar(
        # Application title
        headerPanel("Mortgage Calculator!"),
        
        sidebarPanel(
                textInput('Mortgage_amt', 'Mortgage Amount ($)', value = ""),
                textInput('Interest_Rate', 'Interest Rate (%)', value = ""),
                textInput('Time', 'Time (Year Fixed)', value = ""),
                h5('Please press \'Go!\' only on your first attempt'),
                actionButton("goButton", "Calculate")
        ), 
        mainPanel(
                h2('Enter the Mortgage Amount, Time and Intrest Rate'),
                h5('The objective of this Calculator is to caluclate montly payment based
                   on Mortgage Amount, intrest Rate and Time Period in Year
                   Please Make sure to enter  Number Only'),
                h3('Mortgage Amount'),
                h4('You entered'),
                verbatimTextOutput("inputValue"),
                h4('Your Monthly Mortgage Payment will be...'),
                verbatimTextOutput("outputValue")
               
        )
)
)

