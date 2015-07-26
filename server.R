wcalc <- function(height) height * 3

shinyServer(
    function(input, output) {
        output$w1 <- renderPrint({wcalc(input$height) / 1.2})
        output$w2 <- renderPrint({wcalc(input$height) / 1})
        output$w3 <- renderPrint({wcalc(input$height) / .8})
        output$w4 <- renderPrint({wcalc(input$height) / .6})
    }
)