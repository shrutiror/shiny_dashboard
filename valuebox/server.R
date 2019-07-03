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
    output$requirement<-renderValueBox(
        {
            valueBox(value=15*300,"Requirement by employees",
                     icon=icon("fire",lib="font-awesome"))
        }
    )
    
}
)
