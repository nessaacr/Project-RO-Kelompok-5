library(shiny)
library (shinythemes)

fluidPage(   
  
  
  # Give the page a title
  titlePanel("Student Grade Prediction"),
  theme = shinytheme('united'),
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      fileInput("csv_input","Select CSV File to Import",accept=".csv"),
      selectInput("indicator","Indicator",choices=c(NULL)),
      selectInput("prediction","Prediction Grade",choices=c(NULL)),
      selectInput("original","Original Grade",choices=c(NULL)),
      actionButton("run_button","Run Analysis",icon=icon("play"))
      
    ),
    
    
    # Create a spot for the barplot
   mainPanel(
   
       tabPanel(
         title = "Plot",
         plotOutput("plot_1"),
         plotOutput("plot_2"),
       )
       
     )
)
    
)
