library(shiny)
library(shinydashboard)

shinyUI(
    dashboardPage(
        dashboardHeader(title = "This is the header",
                        dropdownMenu(type="message",
                                     messageItem(from="finance update",message="We are on threshold"),
                                     messageItem(from="sales update",message="We are at 55%"))
                        
        ),
         dropdownMenu(type = "notifications",
                      notificationItem(
                          text = "shiny dashboard ",
                          icon=icon("dashboard"),
                          status = "success"
                      ),
                       notificationItem(
                                   text = "the server is on load ",
                                       icon=icon("warning"),
                                        status = "warning"
                                        )
                     ),
        
        dashboardSidebar(
            sidebarMenu(
                sliderInput("bins","no. of breaks",1,100,50),
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
                             box(plotOutput("histogram")))
                ),
                tabItem(tabName ="finance",h1("Finance dashboard")),
                tabItem(tabName ="sales",h1("sales dashboard"))
                
            )
        )
    )
)
