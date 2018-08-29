page.dashboard <- function(){
  fluidPage(
    title="Civilia",
    theme = "shiny.css",
    navbarPage(
       title=div(tags$a(img(src="CIVILIA_logo_couleur_mac.png",
                            style="height:20px; width:120px; margin-top:-10px"),
                        href="www.civilia.ca", target="_blank"),""),
      tabPanel("",alertsUI("id1"))
    )
  )
}
