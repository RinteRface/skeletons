test_that("use skeletons", {
  pageTag <- fluidPage() %>% use_skeletons()
  expect_true(inherits(pageTag, "shiny.tag.list"))
  expect_true(inherits(pageTag[[1]], "shiny.tag.list"))
  expect_is(pageTag[[2]], "list")
  expect_length(pageTag[[2]], 2)
  expect_is(pageTag[[2]][[1]], "html_dependency")
  expect_is(pageTag[[2]][[2]], "html_dependency")
})
