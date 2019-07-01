library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$histogram<-renderPlot({
        
        hist(faithful$eruptions,breaks=input$bins)
        
    })
    
}
)