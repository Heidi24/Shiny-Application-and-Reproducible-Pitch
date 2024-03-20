#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

BMI = function(height,weight){
  return(100^2*(weight/(height)^2))
}

shinyServer(function(input, output) {
  
        output$bmi = renderText({BMI(input$ht, input$wt)})

})
