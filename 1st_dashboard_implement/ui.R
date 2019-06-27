library(shiny)
library(shinydashboard)

shinyUI(
    dashboardPage(
        dashboardHeader(title = "This is the header"),
        dashboardSidebar(
            sidebarMenu(
                sliderInput("bins","no. of breaks",1,100,50),
                menuItem("Dashboard"),
                menuSubItem("Dashboard Sales"),
                menuSubItem("Dashboard Finanace"),
                menuItem("Detailed analysis"),
                menuItem("Raw data")
            )
        ),
        dashboardBody(
            tabItems(
                tabItem( fluidRow(
                    box(plotOutput("histogram")))
                ),
                tabItem(tabName ="finance",h1("Finance dashboard")),
                tabItem(tabName ="sales",h1("sales dashboard"))
                
            )
        )
    )
)
