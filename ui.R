#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

shinyUI(fluidPage(
    titlePanel("Shiny Application"),
    sidebarLayout(
        sidebarPanel(
          h1("Height"),
          sliderInput("ht", "Please slide to your height value in cm.", 20, 280, 0),
          h1("Weight"),
          sliderInput("wt", "Please slide to your weight value in kg.", 0.2, 650, 0)
        ),
        mainPanel(
          h3("BMI"),
          textOutput("bmi")
        )
    )
))
