test_that("add skeletons", {
  testTag <- p("Hello") %>% add_skeletons(effect = "fade", type = "text")
  expect_true(inherits(testTag, "shiny.tag.list"))
  expect_equal(testTag[[1]]$name, "p")
  expect_equal(testTag[[1]]$attribs$class, "skeleton-text")
  expect_equal(testTag[[2]]$name, "script")
})


test_that("type", {
  testTag <- p("Hello") %>% add_skeletons(effect = "fade", type = "block")
  expect_equal(testTag[[1]]$attribs$class, "skeleton-block")
})
