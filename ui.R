

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone - Final Course Project",
                   tabPanel("Next Word Predictor",
                            
                            br(),
                           
                            br(),
                          
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a partially complete phrase or sentence to display the next word suggestion"),
                                textInput("inputString", "Enter Input Here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Next Word Predictor"),
                                verbatimTextOutput("prediction"),
                                strong(""),
                                tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                textOutput(''),
                                br(),
                                strong(""),
                                tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                textOutput('')
                              )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                             
                              includeMarkdown("./about/about.md")
                            )
                   )
)
)