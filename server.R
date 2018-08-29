#######################
## Define server logic
shinyServer(function(input, output, session) {
   
  callModule(alerts, "id1")
  
  output$page <- renderUI({ page.dashboard() })

  
})
