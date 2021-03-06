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

You will get to find a Line that minimizes the mean squared error (mes) in predicting if parents height have effect on child's height.

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

Code for this presentation is available on [Github Repository](https://github.com/oromia/DevDataProd)

---

## 5. MSE Calculation

code used to calculate MSE and draw plot
beta is user's input (here we set it to .82)

```r
beta <- 0.82
data(galton)
y <- galton$child - mean(galton$child)
x <- galton$parent - mean(galton$parent)

freqData <- as.data.frame(table(x, y))
names(freqData) <- c("child", "parent", "freq")

plot(as.numeric(as.vector(freqData$parent)), as.numeric(as.vector(freqData$child)), 
    pch = 21, col = "black", bg = "yellow", cex = 0.15 * freqData$freq, xlab = "Parents", 
    ylab = "Chlidren")
abline(0, beta, lwd = 3, col = "blue")
points(0, 0, cex = 2, pch = 19, col = "red")
mse <- mean((y - beta * x)^2)
ttl <- paste("mse = ", round(mse, 3), "  ")
title(ttl, col = "red")
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 

