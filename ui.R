
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(
  
  
    pageWithSidebar(
  
          # Application title
          headerPanel("Developing Data Products: Shiny"),
          
          ###################################################################
          # Sidebar 
          ###################################################################
          sidebarPanel(
            
              h5("Comparing children's height and their parents heights."),
              h6("Line that minimizes the mean squared error (mes)"),
             
              
              ## item 3
              sliderInput("beta", 
                          "Least Squared Criteria:", 
                          min = 0.5, 
                          max = 1.5, 
                          value = 1 )
              

          ),
          ###################################################################
          
          
          ###################################################################
          # main panel
          ###################################################################
          mainPanel(
            h2('Regression Through Origin'),
            
            plotOutput("distPlot")
          )
          ###################################################################

    )
  
)
