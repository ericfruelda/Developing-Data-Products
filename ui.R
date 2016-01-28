# Credit Card Defaulter Predictor
# Course Project for Developing Data Products by Coursera

# This is the ui.R file for the Shiny app

library(shiny)

shinyUI(fluidPage(
  titlePanel("Credit Card Defaulter Predictor"),
  sidebarLayout(
    sidebarPanel(
        helpText("Please enter values within the specified limits. Helpful information is provided in the About tab located in the main page."),
        sliderInput("age", "Age (in years, 1-100):", 30, min = 1, max = 200, step=1),
        sliderInput("emp", "Years at Current Employer (0-100):", 10, min = 1, max = 100, step=1),
        sliderInput("add", "Years at Current Address (0-100):", 10, min = 1, max = 100, step=1),
        numericInput("cin", "Current Income ($0-$1000000):", 100000, min = 0, max = 1000000, step=1),
        numericInput("ccd", "Current Credit Card Debt ($0-$1000000):", 0, min = 0, max = 1000000, step=1),
        numericInput("cad", "Current Automobile Debt ($0-$1000000):", 0, min = 0, max = 1000000, step=1),
        submitButton(text = "Submit")
        ),
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Result",
                           h3("Results of Prediction"),
                           h4("You have entered the following:"),
                           verbatimTextOutput("inputage"),
                           verbatimTextOutput("inputemp"),
                           verbatimTextOutput("inputadd"),
                           verbatimTextOutput("inputcin"),
                           verbatimTextOutput("inputccd"),
                           verbatimTextOutput("inputcad"),
                           h4("Prediction"),
                           textOutput("result")), 
                  tabPanel("Plot", plotOutput("plot")),
                  tabPanel("Analysis", htmlOutput("analysis")),
                  tabPanel("About", htmlOutput("about"))
      )
    )
  )
))