#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

fluidPage(
    titlePanel("In which day you have born?!!"),
    
    column(4, wellPanel(
        dateInput('date',
                  label = 'Please select your date of birth',
                  value = Sys.Date()
        )
    )),
    
    column(6,
           verbatimTextOutput("dateText")
    ),
)