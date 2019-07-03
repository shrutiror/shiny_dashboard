library(shiny)
library(shinydashboard)

shinyUI(
    dashboardPage(
        dashboardHeader(title = "This is the header",
                        dropdownMenu(type="message",
                                     messageItem(from="finance update",message="We are on threshold"),
                                     messageItem(from="sales update",message="We are at 55%"))
                        
        ),
        dashboardSidebar(
            sidebarMenu(
                sidebarSearchForm("SearchText","buttonSearch","Search"),
                menuItem("Dashboard",tabName = "Dashboard"),
                menuSubItem("Dashboard Sales",tabName ="sales"),
                menuSubItem("Dashboard Finanace",tabName ="finance"),
                menuItem("Detailed analysis"),
                menuItem("Raw data")
            )
            
        ),
        dashboardBody(
            tabItems(
                tabItem( tabName = "Dashboard",
                         fluidRow(
                             tabBox(
                                 tabPanel( title=h3("Histogram of faithful"),
                                           status="warning",solidHeader=T,background="aqua",plotOutput("histogram")),
                                 tabPanel( title=h3("controls for histogram"), 
                                           status="danger",solidHeader=T,background="green",
                                           sliderInput("bins","no. of breaks",1,100,50), 
                                           textInput("text","search opportunities",value="12345")))
                         )
                ),
                tabItem(tabName ="finance",h1("Finance dashboard")),
                tabItem(tabName ="sales",h1("sales dashboard"))
                
            )
        )
    )
)
