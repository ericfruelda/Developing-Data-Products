# Credit Card Defaulter Predictor
# Course Project for Developing Data Products by Coursera

# This is the server.R file for the Shiny app

shinyServer(function(input, output) {
  
  # Generate multivariate linear regression analysis for data provided and predict outcome for input data
  data <- read.csv("data.csv", header = TRUE)
  data<-data[,c(2:8)]
  training <- data[c(1:300), ] 
  fitmodel <- lm(Default_Outcomes~.,training)
  coef <- as.matrix(fitmodel$coef)
  x <- reactive({as.matrix(cbind(1, input$age, input$emp, input$add, input$cin, -input$ccd, -input$cad))})
  decision <- reactive({round(as.numeric(x() %*% coef))})
  
  # Generate display of inputs
  output$inputage <- renderText({
    paste("Your current age is ", input$age, ".")})
  output$inputemp <- renderText({
    paste("The number of years at your current employer is ", input$emp, ".")})
  output$inputadd <- renderText({
    paste("The number of years at your current address is ", input$add, ".")})
  output$inputcin <- renderText({
    paste("Your current income is $", input$cin, ".")})
  output$inputccd <- renderText({
    paste("Your current credit card debt is $", input$ccd, ".")})
  output$inputcad <- renderText({
    paste("Your current automobile debt is $", input$cad, ".")})
    
  # Generate output from decision
  output$result <- renderText({
    if (decision() >= 1) {
      print("Sorry but we have predicted that you have a strong possibility of being a defaulter in the future.")
    } else {
      print("Congratulations! You have a very good credit rating.")}
    })
  
  # Generate plot for Plot tab
  output$plot <- renderPlot({
    par(mfrow=c(2,2))
    plot(fitmodel,
         main="Plot of Multivariate Regression Model")
    })

  # Call on HTML file for Analysis tab
  output$analysis <- renderUI({
    includeHTML("analysis.html")
    })
  
  # Call on HTML file for About tab
  output$about <- renderUI({
    includeHTML("about.html")
  })
})