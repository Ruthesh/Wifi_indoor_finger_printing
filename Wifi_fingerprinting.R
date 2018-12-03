## Indoor WIFI Fingerprint ##

## Packages to import ##
library(tidyverse)
library(plotly)
library(anytime) # converts unix time to GMT

## Set Working directory ##

setwd("C:/Users/Ruthesan-PC/Desktop/Ubiqum_class/R_studio/Module_3/Task_3")

## Load Data ##
TrainingSet <- read.csv("trainingData.csv", sep = ",")
ValidationSet <- read.csv("ValidationData.csv", sep = ",")

## Preprocessing the Data ##
sapply(TrainingSet, class)

sapply(ValidationSet, class)

setdiff(colnames(TrainingSet), colnames(ValidationSet)) #check colnames similarity

unique(TrainingSet[,523:524]) #Check floor and building id (B0-0-3, B1-0-3, B2-0-4)

duplic_train <- which(duplicated(TrainingSet)) # rownames of duplicates

TrainingSet <- TrainingSet[-duplic_train,] # remove duplicate

