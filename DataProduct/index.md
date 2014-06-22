---
title       : Developing Data Products Shiny
subtitle    : Regression Through Origin
author      : Coursera Data Science Project
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## 1. Developing Data Products

We will develop a Data Product using Shiny R package.
Shiny makes it easy to build interactive web applications with R. 

--- .class #id 

## 2. Data Source

We compare children's height and their parents heights using Galtons data from 'UsingR' package.

---

## 3. Data

Hear is head of data used. We are interested in child and parent height.

```r
library(UsingR)
data(galton)
summary(galton)
```

```
##      child          parent    
##  Min.   :61.7   Min.   :64.0  
##  1st Qu.:66.2   1st Qu.:67.5  
##  Median :68.2   Median :68.5  
##  Mean   :68.1   Mean   :68.3  
##  3rd Qu.:70.2   3rd Qu.:69.5  
##  Max.   :73.7   Max.   :73.0
```


---
  

## 4. Code

Code for this presentation is available on [Github](https://github.com/coursera-student/coursera_slidify)
