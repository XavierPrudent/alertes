##############################################
## Alerts : UI and server
##############################################

###################################
## UI function
alertsUI <- function(id) {
  ns <- NS(id)
  tagList(
    
    fluidPage(
      fluidRow(
        column(3,
               ## Cause
               selectInput(ns("cause"), label = h4("Cause"), causes),
               ## Effet
               selectInput(ns("effet"), label = h4("Effet"), effets)
        )
      ),
      br(),
      fluidRow(column(6,actionButton(ns("pubButton"), label = h5("Publier"))))
      
    )
    
  )
  
}

###################################
## Module server function
alerts <- function(input, output, session) {
  ##
  ## Listen to the Eval button
  observeEvent(input$pubButton, {
    ## Phrase complete
    phrCause <- phraseCauses[which(causes == input$cause)]
    phrEffet <- phraseEffets[which(effets == input$effet)]
    phrCompl <- paste(phrCause, ", ", phrEffet, sep="")
    showModal(modalDialog("Message :", phrCompl, easyClose = TRUE))
    
  })
  
  
}



