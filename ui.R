#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
exchange <- rbind.data.frame(euro, euro.cross)
exchange$EUR <- c(1, 1/euro)
row.names(exchange)[1] <- "EUR"
currency <- list("EUR" = "European Euro",
                 "ATS" = "Austrian Schilling",
                 "DEM" = "German Mark",
                 "ESP" = "Spanish Peseta",
                 "FIM" = "Finnish Markka",
                 "FRF" = "French Franc",
                 "IEP" = "Irish Pound",
                 "ITL" = "Italian Lira",
                 "LUF" = "Luxembourgian Franc",
                 "NLG" = "Dutch Guilder",
                 "PTE" = "Portuguese escudo",
                 "BEF" = "Belgian Franc",
                 "CYP" = "Cypriot Pound",
                 "EEK" = "Estonian Kroon",
                 "GRD" = "Greek Drachma",
                 "SIT" = "Slovenian Tolar")
exchangeApp <- (
    list(ui = pageWithSidebar(
        headerPanel("European Currency Exchange Rates"),
        sidebarPanel(
            selectInput("variable", "Change:", currency),
            selectInput("variable2", "To:", currency)
        ),
        mainPanel(
            h3('Currency'),
            h4("From"),
            verbatimTextOutput("oid1"),
            h4("To"),
            verbatimTextOutput("oid2"),
            h4("Amount"),
            verbatimTextOutput("amount")
            
        )
    )
))