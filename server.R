
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(UsingR)

shinyServer(
  
  function(input, output) {
    
    output$distPlot <- renderPlot({
      
            data(galton)
            y <- galton$child - mean(galton$child)
            x <- galton$parent - mean(galton$parent)
            
            freqData <- as.data.frame(table(x,y))
            names(freqData) <- c("child", "parent", "freq")
            
            plot(    as.numeric(as.vector(freqData$parent))
                     , as.numeric(as.vector(freqData$child))
                     , pch = 21
                     , col = "black"
                     , bg = "yellow"
                     , cex = .15 * freqData$freq 
                     , xlab = "Parents"
                     , ylab = "Chlidren"
            )
            abline(0, input$beta,lwd = 3, col="blue")
            points(0,0, cex = 2, pch = 19, col="red")
            mse <- mean( (y - input$beta * x)^2  )
            ttl <- paste( "mse = ", round(mse,3), "  ")
            title( ttl, col="red")
            ###output$distPlot <- renderPlot({
            #### generate and plot an rnorm distribution with the requested
            #### number of observations
            ###dist <- rnorm(input$obs)
            ###hist(dist)
      
  })
  
})
