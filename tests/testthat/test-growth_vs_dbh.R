library(testthat)
library(bci)
library(ctfs)
library(tibble)
library(dplyr)


context("functions work in tutorial growth vs dbh")

cns1 <- bci::bci12full1
cns2 <- bci::bci12full2
  
test_that("extract.growthdata works with minimum arguments", {
  actual <- extract.growthdata(cns1, cns2)
  expect_true(is.data.frame(actual))
  expect_equal_to_reference(actual, "extract.growthdata.rds")
  
  
  onespdata <- subset(actual, sp == 'tet2pa')
  
  
  actual_gf <- growth.flexbin(
    growthtable = onespdata,
    sizecol = 'dbh',
    nobin = 2,
    start = NULL,
    startsd = c(.02, 0),
    sdmodel = linear.model.ctr,  ##### try alternatives to see it this is what fails
    method = 'Gibbs',
    rep = 1500,
    burn = 500,
    show = 100
  )
  
})

linear.model.ctr









# no need to work on ----
# # files
# growth.r
# growthfit.bin.r
# utilities.r
# statistics.r
# distributions.r
# 
# # data
# bci.full5 and bci.full6 
# 
# # funs
# 
# 
# # already used
# 
# CTFSplot
# 
# attach_if_needed
# 
# 
# 
# need to work on ----
# # new funs
# 
# DONE ----
# extract.growthdata(
#   census1 = cns1,
#   census2 = cns2,
#   growcol = 'incgr',+growthfunc = growth.biomass.indiv,
#   logit = 'x',
#   rounddown = FALSE,+mindbh = 100,
#   dbhunit = 'mm',
#   err.limit = 4,
#   maxgrow = 75
# )
# 
# ----
# growth.flexbin(
#   growthtable = onespdata,
#   sizecol = 'dbh',
#   nobin = 2,
#   start = NULL,
#   startsd = c(.02, 0),
#   sdmodel = linear.model.ctr,
#   method = 'Gibbs',
#   rep = 1500,
#   burn = 500,
#   show = 100
# )
# 
# graph.growthmodel.spp(
#   fit,
#   regclr = 'green',
#   modelclr = 'blue',
#   graphdiv = 10,
#   conf = 0
# )
# 
# run.growthfit.bin(
#   growthdata = onespdata,
#   size = "agb",
#   startpar = c(.03, .005),
#   startsdpar = c(.04, 0),
#   sdmodel = linear.model.ctr,
#   binoption = 1:4,
#   noreps = 1500,
#   noburn = 500,
#   noshow = 500
# )
# 
# run.growthbin.manyspp(
#   growthdata = agb.growth,
#   size = 'agb',
#   spp = allspecies,
#   minabund300 = 15,
#   minTotal = 40,
#   dbhunit = 'mm',
#   startpar = c(.03, .005),
#   startsdpar = c(.04, 0)
# )
# 
# overlay.growthbinmodel(
#   fit = linearbin.fit.allspp,
#   bins = 1:4,
#   regclr = "green",
#   modelclr = "blue",
#   graphdiv = 10,
#   add = FALSE,
#   newgraph = TRUE,
#   export = NULL
# )
# 
# compare.growthbinmodel(fit = linearbin.fit.allspp,
#   export = NULL,
#   makegraph = FALSE)