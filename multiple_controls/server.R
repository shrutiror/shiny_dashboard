library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$histogram<-renderPlot({
        
        hist(faithful$eruptions,breaks=input$bins)
        
    })
    output$Approvedsales<-renderInfoBox(
        {
            infoBox("Approved sales",value="1,00,000",
                   icon =icon("bar-chart-o",lib = "font-awesome"))
        }
    )
    
}
)
