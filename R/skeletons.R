#' Create skeleton overlay for a given duration
#'
#' @param tag Tag to be modified.
#' @param effect Choose between "fade", "pulse" or "blink".
#' @param type Skeleton type: \code{c("text", "block", "image", "avatar")}.
#' @param duration Effect duration: 3000 ms by default.
#'
#' @return The input tag with additional class and javascript.
#' @export
#'
#' @note List of supported characters: \url{https://skeleton-elements.dev/core/#skeleton-text}.
#'
#' @examples
#' if (interactive ()) {
#'  library(shiny)
#'  library(shinyWidgets)
#'  ui <- fluidPage(
#'    useShinydashboard(),
#'    # individual skeleton
#'    p("I am a poor single skeleton") %>% add_skeletons(effect = "fade", type = "text"),
#'    br(),
#'    br(),
#'
#'    # grouped skeletons
#'    div(
#'      p("Hello World"),
#'      p("I am David"),
#'      p("Nice to meet you"),
#'    ) %>%
#'    add_skeletons(effect = "fade", type = "text"),
#'    br(), br(),
#'
#'    # works with more complex HTML structures
#'    box(
#'      title = "Status summary 2",
#'      width = 4,
#'      "A box",
#'      numericInput("progress", "Progress", value = 50, min = 0, max = 100),
#'      textOutput("val")
#'    ) %>% add_skeletons(effect = "fade", type = "text"),
#'  ) %>% use_skeletons()
#'  server <- function(input, output, session) {
#'    output$val <- renderText({
#'     paste(input$progress, "%")
#'    })
#'  }
#'  shinyApp(ui, server)
#' }
add_skeletons <- function(tag, effect = c("fade", "pulse", "blink"),
                          type = c("text", "block", "image", "avatar"), duration = 3000) {

  effect <- match.arg(effect)
  type <- match.arg(type)

  tag$attribs$class <- if (is.null(tag$attribs$class)) {
    sprintf("skeleton-%s", type)
  } else {
    paste(tag$attribs$class, sprintf("skeleton-%s", type))
  }

  tagList(
    tag,
    htmltools::tags$script(
      sprintf(
        if (type == "block") {
          "setBlockEffect('%s');
           // remove effect after given duration
           setTimeout(function() {
            setBlockEffect(null);
           }, %s);
          "
        } else if (type == "text") {
          "setTextEffect('%s');
           // remove effect after given duration
           setTimeout(function() {
            setTextEffect(null);
           }, %s);
          "
        } else if (type == "image") {
          "setImageEffect('%s');
           // remove effect after given duration
           setTimeout(function() {
            setImageEffect(null);
           }, %s);
          "
        } else if (type == "avatar") {
          "setAvatarEffect('%s');
           // remove effect after given duration
           setTimeout(function() {
            setAvatarEffect(null);
           }, %s);
          "
        },
        effect,
        duration
      )
    )
  )
}
