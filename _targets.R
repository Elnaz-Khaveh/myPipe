library(targets)
library(myPack)
library(dplyr)
library(GGally)
library(hash)
library(caret)
library(rsample)
library(randomForest)
library(ggplot2)
source("functions.R")

list(
  tar_target(
    insurance_data, get_data()
    ),

  tar_target(
    train_data, train_set(insurance_data)),

  tar_target(
    test_data, test_set(insurance_data)),

  tar_target(
    predicted, pred(train_data,test_data)),

  tar_target(
    prediction_plot, res_plot(predicted,test_data))
  )
