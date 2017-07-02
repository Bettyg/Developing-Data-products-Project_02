library(shiny) # Load shiny package
data("trees") # Load the trees dataset


shinyServer(
  
  
  function(input, output) {
    
    
    
    colm <- reactive({
      as.numeric(input$var)
      
    })
    
    output$text1 <- renderText({ 
      
      paste("Data set variable/column name is", names(trees[colm()]))
      
    })
    
    output$text2 <- renderText({ 
      paste("Color of histogram is", input$radio)
    })
    
    output$text3 <- renderText({ 
      paste("Number of histogram BINs is", input$bin)
    })
    
    output$myhist <- renderPlot(
      
      {
        
        hist(trees[,colm()], col =input$colour, xlim = c(0, max(trees[,colm()])), main = "Histogram of trees dataset", breaks = seq(0, max(trees[,colm()]),l=input$bin+1), xlab = names(trees[colm()]))}
      
    )    
  }
)
