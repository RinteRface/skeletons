% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skeletons.R
\name{add_skeletons}
\alias{add_skeletons}
\title{Create skeleton overlay for a given duration}
\usage{
add_skeletons(
  tag,
  effect = c("fade", "pulse", "blink"),
  type = c("text", "block", "image", "avatar"),
  duration = 3000
)
}
\arguments{
\item{tag}{Tag to be modified.}

\item{effect}{Choose between "fade", "pulse" or "blink".}

\item{type}{Skeleton type: \code{c("text", "block", "image", "avatar")}.}

\item{duration}{Effect duration: 3000 ms by default.}
}
\value{
The input tag with additional class and javascript.
}
\description{
Create skeleton overlay for a given duration
}
\note{
List of supported characters: \url{https://skeleton-elements.dev/core/#skeleton-text}.
}
\examples{
if (interactive ()) {
 library(shiny)
 library(shinyWidgets)
 ui <- fluidPage(
   useShinydashboard(),
   # individual skeleton
   p("I am a poor single skeleton") \%>\% add_skeletons(effect = "fade", type = "text"),
   br(),
   br(),

   # grouped skeletons
   div(
     p("Hello World"),
     p("I am David"),
     p("Nice to meet you"),
   ) \%>\%
   add_skeletons(effect = "fade", type = "text"),
   br(), br(),

   # works with more complex HTML structures
   box(
     title = "Status summary 2",
     width = 4,
     "A box",
     numericInput("progress", "Progress", value = 50, min = 0, max = 100),
     textOutput("val")
   ) \%>\% add_skeletons(effect = "fade", type = "text"),
 ) \%>\% use_skeletons()
 server <- function(input, output, session) {
   output$val <- renderText({
    paste(input$progress, "\%")
   })
 }
 shinyApp(ui, server)
}
}
