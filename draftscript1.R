#Meta-analysis of OA Researchers
title: "Oceanresearcheranalysis"
author: "Trevor Eakes"
date: "November 2021"
output:
  html_document:
  code_folding: show
toc: yes
toc_float:
  collapsed: no
smooth_scroll: no
pdf_document:
  toc: yes
subtitle: My analysis
#First, load all your favorite packages
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
packages <- c("opencage", "rworldmap", "rworldxtra",
              "maptools", "classInt", "ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid", c("digest","ggplot2","colorspace","stringr","RColorBrewer","reshape2","zoo","proto","scales","car","dichromat","gtable","munsell","labeling","Hmisc","rJava","mvtnorm","bitops","rgl","foreign","XML","lattice","e1071","gtools","sp","gdata","Rcpp","MASS","Matrix","lmtest","survival","caTools","multcomp","RCurl","knitr","xtable","xts","rpart","evaluate","RODBC","tseries","DBI","nlme","lme4","reshape","sandwich","leaps","gplots","abind","randomForest","Rcmdr","coda","maps","igraph","formatR","maptools","RSQLite","psych","KernSmooth","rgdal","RcppArmadillo","effects","sem","vcd","XLConnect","markdown","timeSeries","timeDate","RJSONIO","cluster","scatterplot3d","nnet","fBasics","forecast","quantreg","foreach","chron","plotrix","matrixcalc","aplpack","strucchange","iterators","mgcv","kernlab","SparseM","tree","robustbase","vegan","devtools","latticeExtra","modeltools","xlsx","slam","TTR","quantmod","relimp","akima","memoise", "flatxml"))
ipak(packages)
load<- c(c("opencage", "rworldmap", "rworldxtra",
           "maptools", "classInt", "ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid", c("digest","ggplot2","colorspace","stringr","RColorBrewer","reshape2","zoo","proto","scales","car","dichromat","gtable","munsell","labeling","Hmisc","rJava","mvtnorm","bitops","rgl","foreign","XML","lattice","e1071","gtools","sp","gdata","Rcpp","MASS","Matrix","lmtest","survival","caTools","multcomp","RCurl","knitr","xtable","xts","rpart","evaluate","RODBC","tseries","DBI","nlme","lme4","reshape","sandwich","leaps","gplots","abind","randomForest","Rcmdr","coda","maps","igraph","formatR","maptools","RSQLite","psych","KernSmooth","rgdal","RcppArmadillo","effects","sem","vcd","XLConnect","markdown","timeSeries","timeDate","RJSONIO","cluster","scatterplot3d","nnet","fBasics","forecast","quantreg","foreach","chron","plotrix","matrixcalc","aplpack","strucchange","iterators","mgcv","kernlab","SparseM","tree","robustbase","vegan","devtools","latticeExtra","modeltools","xlsx","slam","TTR","quantmod","relimp","akima","memoise", "flatxml")))
lapply(load, require, character.only = TRUE)
setwd()
#connect to github
user_name <-"mycid"
project_name<- "metaOAresearch"

#working directory
setwd()
knitr::read_chunk("scripts/Extract_Rasterize.R")
source("scripts/Extract_Rasterize.R")

paths <- list.dirs(path = "input/")
files <- list.files(path = paths, pattern = ".nc$", full.names = TRUE)
if (length(files) == 0){
  message("input netCDF files are not present in the input folder")
} else{
  message(paste(length(files), "files are present"))
}


#How many OA researchers are there over time and in what countries
  #dataset
  #codeuniqueID
  #merge duplicates
  #throw out bad data
  #graph # of publications per year
  #graph countries by researchers
  #pubblications per researcher
  #map researchers per country over time (or heat map countries and year)

#Match GOA-ON member list by name and country with our list, compare where they are
  #load clean GOA-ON list
  #case insensative matching
  #create list of all non matches
  #map of researcher by country

#Research institutions map
  #load seperate lists of addresses
  #clean up data, remove spaces, one vector etc
  #load opencage and forward geocode the names
  #map addresses
  #Add country code
  #density per country
  
