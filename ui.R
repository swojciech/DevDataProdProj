library(shiny)

shinyUI(fluidPage(
  
  ## Application name
  titlePanel("Mean Calculator"),
  
  sidebarLayout(
  
    ## User input
    sidebarPanel(
      h3('Enter three numbers for which you would like the mean to be calculated.'),
      numericInput(inputId = 'num1', label = 'First number', value = 0),
      numericInput(inputId = 'num2', label = 'Second number', value = 0),
      numericInput(inputId = 'num3', label = 'Third number', value = 0),
      actionButton("goButton", "Go!") ## So mean is not calculated until go button is clicked
    ),
  
    ## Application supporting documentation tabset and output tabset based on user input
    mainPanel(
      tabsetPanel(
        tabPanel("Supporting Documentation", 
          p("After you have read these instructions, click the Application tab above."),
          p("This application calculates the mean of three numbers."),
          p("On the sidebar panel are three boxes initially populated with 0's."),
          p("Enter a number in each of them."),
          p("Each number entered will be displayed in the main panel once entered."),
          p("When you are ready for the mean to be calculated, press the Go! button."),
          p("The calculated mean will be displayed in the main panel.")),
        tabPanel("Application",
          h3('What went in:'),
          h4('For the first number, you entered'),
          verbatimTextOutput("onum1"),
          h4('For the second number, you entered'),
          verbatimTextOutput("onum2"),
          h4('For the third number, you entered'),
          verbatimTextOutput("onum3"),
          h3('What came out:'),
          h4('The mean of the numbers entered is'),
          verbatimTextOutput("oMean"))
      )
    )
  )
))