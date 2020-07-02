skeletons_css_deps <- htmltools::htmlDependency(
  name = "skeleton-elements-css",
  version = "0.9.0",
  src = c(href = "https://unpkg.com/@skeleton-elements/core/"),
  stylesheet = "skeleton-elements.css"
)


skeletons_js_deps <- htmltools::htmlDependency(
  name = "skeleton-elements-js",
  version = as.character(packageVersion("skeletons")),
  src = c(file = "skeleton-elements-0.9.0"),
  package = "skeletons",
  script = "setEffect.js"
)


#' Add skeletons dependencies to the given tag
#'
#' @param tag Any html tag. In practice, best use it to attach dependencies
#' to the main UI wrapper.
#' @return The original tag with all necessary skeletons dependencies
#' @export
use_skeletons <- function(tag) {
  deps <- list(skeletons_css_deps, skeletons_js_deps)
  htmltools::tagList(tag, deps)
}
