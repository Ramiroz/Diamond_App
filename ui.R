#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diamond Prices in function of Carat and Clarity"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("carat",
                   "Carat size",
                   min = 0.5,
                   max = 3.5,
                   value = 0.7),
      selectInput("clarity", "Choose Clarity", choices = c("IF", "VVS1", "VVS2","VS1", "VS2", "SI1", "SI2", "I1")),
      img(src = "diamond.jpg", height = 200, width = 200),
      h5("Note: To use this app:"),
      h5("Select the Diamond size (from 0.5 to 3.5 carat by moving the slider"),
      h5("Choose the Diamond Clarity from the drop box"),
      h5("The graph will show the linear model and the red dot indicating the selected parameters"),
      h5("Diamond predicted price in USD is indicated in the text below the chart")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Price for the selected Carat and Clarity"),
       textOutput("price1")
      
    )
  )
))