#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(
    function(input, output) {
        output$oid1 <- renderPrint({input$variable})
        output$oid2 <- renderPrint({input$variable2})
        output$amount <- renderPrint({
            curr1 <- names(currency[currency %in% input$variable])
            curr2 <- names(currency[currency %in% input$variable2])
            exchange[curr1, curr2]
        })
    }
)
