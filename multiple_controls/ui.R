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
                sliderInput("bins","no. of breaks",1,100,50),
                menuItem("Dashboard",tabName = "Dashboard"),
                menuSubItem("Dashboard Sales",tabName ="sales"),
                menuSubItem("Dashboard Finanace",tabName ="finance"),
                menuItem("Detailed analysis"),
                menuItem("Raw data"),
                textInput("text","search opportunities",value="12345")
            )
        ),
        dashboardBody(
            tabItems(
                tabItem( tabName = "Dashboard",
                         fluidRow(
                             box( title=h3("Histogram of faithful"), status="warning",solidHeader=T,plotOutput("histogram")))
                ),
                tabItem(tabName ="finance",h1("Finance dashboard")),
                tabItem(tabName ="sales",h1("sales dashboard"))
                
            )
        )
    )
    )
