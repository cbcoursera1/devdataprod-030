library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Healthy Weight Calculator"),
    sidebarPanel(
        numericInput('height', 'How tall in inches are you?', 60, min = 40, max = 100, step = 1),
        submitButton("Calculate")
    ),
    mainPanel(
        h4('Enter your weight and this entirely inaccurate application will indicate how much you should weigh, corresponding to various BMI levels.'),
        h3('Your weight based on BMI should be (lbs)'),
        h4('18.5 BMI (underweight)'),
        verbatimTextOutput("w1"),
        h4('22 BMI (healthy)'),
        verbatimTextOutput("w2"),
        h4('28 BMI (overweight)'),
        verbatimTextOutput("w3"),
        h4('30+ BMI (obese)'),
        verbatimTextOutput("w4"),
        h5('\n\nFOR ENTERTAINMENT ONLY, CALCULATIONS ARE NOT MEANT TO BE ACCURATE')
    )
))