Credit Card Defaulter Predictor App
========================================================
author: Eric Fruelda
date: Thursday, January 28, 2016
transition: rotate
font-family: arial


Welcome to the Credit Card Defaulter Predictor App!
========================================================

<small>
This app was developed for the Developing Data Products Course from Coursera. The main objective for this app is to predict if a credit card applicant will be a defaulter in the future given his/her current financial status. The app uses a multivariate regression analysis model from 400 cases of credit card customers with default and non-default outcomes.

- The user needs to input the required information in the left side of the page.
- The default values have been entered and needs to be changed by the user.
- The limits of the values that can be entered are specified to guide the user in entering the correct data.
- The submit button will run the application and display the result of the prediction.</small>

Multiple Tabs
========================================================

- Results Tab
  + <small> In the main page, the user will be able to view the outcome of the prediction.</small> 
- Plot Tab
  + <small> There is also a Plot tab where the user can see the plot of the Residual Plots for the model that was used in the prediction.</small> 
- Analysis Tab
  + <small> The Analysis tab displays the analysis that was created in creating the multivariate regression model.</small> 
- About Tab
  + <small> The About Tab contains the guide for the user in using the app and other helpful information about the project.</small>

Shiny App
========================================================

Shiny is a web application framework for R. This application was done using Shiny thus we call it a Shiny App. The following are the basic requirements for this app to work.

1. The associated supporting documentations that the user needs to get started in using the application will be included in the app itself.
2. The application will be deployed in Rstudio's shiny server.
3. The application codes which includes the server.R and ui.R code and other necessary files for it to run will be posted in [Github](https://github.com/ericfruelda/Developing-Data-Products.git).

The Multivariate Regression Analysis Prediction Model
========================================================

<small><small>
The multivariate linear regression model that was used in the prediction was generated using the *lm* function in R. The app contains a simple statistical analysis and plot for this model.


```

Call:
lm(formula = Default_Outcomes ~ ., data = training)

Coefficients:
         (Intercept)                   age     years.at.employer  
           4.861e-01            -4.645e-03            -2.629e-02  
    years.at.address            income....  credit.card.debt....  
           2.278e-02            -1.222e-06            -4.633e-05  
 automobile.debt....  
          -7.643e-06  
```
</small></small>
