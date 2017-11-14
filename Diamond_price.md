Diamond Price
Shiny Application
========================================================
author: Ramy Hashem
date: 14 November 2017
autosize: true

Shiny App: <https://ramiroz.shinyapps.io/ass9-4/>  
Github: <https://github.com/Ramiroz/Diamond_App>  

Diamond Price
========================================================

In this Shiny Application, I've built a model to predict the Diamond Price in USD, given the diamond size in **"Carat"** and the diamond **"Clarity"**.

- Diamond size from 0.5 to 3.5 Carat 
- Diamond Clarity with following options IF, VVS1, VVS2, VS1, VS2, SI1, SI2, I1 

Shiny App User Interface & Web Server
========================================================

The **User interface** is provided on the side panel, requesting 2 inputs:  
1- Slide Bar for the Diamond size in Carat  
2- Drop box for the Diamond Clarity indication 

The **Web Server** provides the backend calculation for a *Linear Model*.  
The dataset of diamond was re-sampled to include 40% of the dataset size to simplify the plot presentation and reduce the time delay for the plot refresh.

The right Linear Model is selected based on the Diamond Clarity and the price prediction is based on the diamond size. Displayed on the plot with a *big red dot*.

Diamond Price Plot
========================================================

![plot of chunk unnamed-chunk-1](Diamond_price-figure/unnamed-chunk-1-1.png)


Reference to the App
========================================================

1- Shiny App Server.R and ui.R on <https://github.com/Ramiroz/Diamond_App>  
2- R Markdown file on  <https://github.com/Ramiroz/Diamond_App>  
3- Shiny App <https://ramiroz.shinyapps.io/ass9-4/>  


