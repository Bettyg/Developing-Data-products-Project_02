# Install the shiny package if not already installed
# install.packages("shiny")

library(shiny) # load the shiny package

# Define UI for application
shinyUI(fluidPage(
  
  # Header or title Panel 
  titlePanel(h4('Demonstration of render plot with trees dataset', align = "center")),
  
  # Sidebar panel
  sidebarPanel(
    
    
    
    selectInput("var", label = "1. Select the quantitative Variable", 
                choices = c("Girth" = 1, "Height" = 2, "Volume" = 3),
                selected = 3), 
    
    
    sliderInput("bin", "2. Select the number of histogram BINs by using the slider below", min=5, max=40, value=25),
    
    radioButtons("colour", label = "3. Select the color of histogram",
                 choices = c("Green", "Red", "Blue",
                             "Yellow"), selected = "Green")
  ),
  
  # Main Panel
  mainPanel(
    textOutput("text1"),
    textOutput("text2"),
    textOutput("text3"),
    plotOutput("myhist")
    
  )
  
)
)
