library(shiny)

ui <- shinydashboardPlus::dashboardPage(
  options = list(sidebarExpandOnHover = TRUE),
  header = shinydashboardPlus::dashboardHeader(
    title = "Sales App" |> shiny::h3(class = "dropdown", style = "display: inline;")
  ),
  sidebar = shinydashboardPlus::dashboardSidebar(
    minified = TRUE, collapsed = FALSE,
    shiny::selectInput("store", "Store", choices = 1:3, selected = 1)
  ),
  body = shinydashboard::dashboardBody(
  ),
  title = "DashboardPage"
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
