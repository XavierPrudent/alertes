## 
## load.libraries()
suppressMessages(library(shiny))
suppressMessages(library(plotly))
suppressMessages(library(tidyr))
suppressMessages(library(data.table))
suppressMessages(library(fasttime))
suppressMessages(library(dplyr))
suppressMessages(library(lubridate))
suppressMessages(library(xts))
suppressMessages(library(stringr))
suppressMessages(library(leaflet))
suppressMessages(library(grid))
##
## Set global env values
setGlobalValues <- function(){
  ##
  ## Civilia colors
  .GlobalEnv$civ.col1 <- rgb(60/255, 60/255, 59/255)
  .GlobalEnv$civ.col2 <- rgb(145/255, 191/255, 39/255)
  
  .GlobalEnv$civ.axis.col <- list(linecolor = toRGB("lightgrey"),
                                  gridcolor = toRGB("darkgrey"),
                                  tickcolor = toRGB("darkgrey"),
                                  tickfont = list(color="white"),
                                  titlefont = list(color="white"))
  ##
  ## Cause
  .GlobalEnv$causes <- c("Problèmes techniques", 
                        "Grève", "Manifestation",
                        "Accident", "Vacances",
                        "Météo", "Maintenance",
                        "Travaux", "Police",
                        "Urgence médicale")
  phraseCauses <- c("de grèves", "de manifestations",
                               "d'accident", "de vacances",
                               "de la situation météo", "de maintenance",
                               "de travaux", "d'activités policières",
                               "d'urgence médicale")
  .GlobalEnv$phraseCauses <- paste("En raison", phraseCauses)
  ##
  ## Effets
  .GlobalEnv$effets <- c("Pas de service", "Service réduit", 
                        "Retards importants", 
                        "Détour", "Service additionnel",
                        "Service modifié", "Arrêt déplacé")
  .GlobalEnv$phraseEffets <- c("le service est interrompu", "le service est réduit", 
                         "des retards sont à prévoir", 
                         "des détours sont à prévoir", "des services additionnels sont mis en place",
                         "le service est modifié", "des arrêts sont déplacés")
}

##
## Load source code
setGlobalValues()
source("alerts.R")
source("dashboard.R")
source("ui.R")
source("server.R")
