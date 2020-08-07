#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

function(input, output, session) {
    
    # input$date and others are Date objects. When outputting
    # text, we need to convert to character; otherwise it will
    # print an integer rather than a date.
    output$dateText  <- renderText({
        if(input$date < Sys.Date()){
        paste("You have born on", as.character(weekdays(input$date)))}
        else if(input$date > Sys.Date()){
            paste("The baby will be born on", enc2native(as.character(weekdays(input$date))))}
        else {"Congratulations on the new baby"}
    })

}