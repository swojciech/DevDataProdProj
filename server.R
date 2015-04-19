library(shiny)

# Function to calculate mean of three inputted numbers
meanCalc <- function(num1, num2, num3) mean(c(num1, num2, num3))

shinyServer(
  function(input, output) {
    output$onum1 <- renderPrint({input$num1}) ## First number entered
    output$onum2 <- renderPrint({input$num2}) ## Second number entered
    output$onum3 <- renderPrint({input$num3}) ## Third number entered
    output$oMean <- renderPrint({ ## Calculated mean
      input$goButton ## Do not calculate mean until go button has been clicked
      isolate(meanCalc(input$num1, input$num2, input$num3))
    })
  }  
)