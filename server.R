#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
data(diamonds)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  diamond <- subset(diamonds,select = c("carat", "cut", "color", "clarity","price"))
  set.seed(1000)
  diamond <- diamond[sample(1:nrow(diamond),nrow(diamond)*.4, replace=FALSE),]
  
  fit <- lm(price~carat, data = subset(diamond,clarity == "IF", select = -clarity))
  
  point_y <- reactive({
     
    fit <- lm(price~carat, data = subset(diamond,clarity == input$clarity, select = -clarity))
    caratinput <- input$carat
    predict(fit, newdata = data.frame(carat=caratinput))
  })
  
  output$plot1 <- renderPlot({
    
    qplot(carat,price,colour=clarity,data=diamond)+
      geom_point(alpha = 0.5, size = 1, position = 'jitter',aes(color=clarity))+ 
      geom_smooth(method='lm',formula=y~x) + 
      scale_color_brewer(type = 'div', guide = guide_legend(title = 'Clarity', reverse = T,override.aes = list(alpha = 1, size = 2))) +
      geom_point(aes(x=input$carat, y=point_y()),color="red", size = 6)
    
  })
  
  output$price1 <- renderText({
    paste(format(round(as.numeric(point_y()),0),nsmall=0, big.mark=","),"USD")
  })
  
})
