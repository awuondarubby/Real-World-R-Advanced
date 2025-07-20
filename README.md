# Real-World R Practice: freeCodeCamp Course Walkthrough

This repository contains my hands-on practice and notes from the [freeCodeCamp R for Data Science full course](https://www.youtube.com/watch?v=_V8eKsto3Ug). I followed the entire video tutorial and coded along while organizing and testing each section in R.

## What This Project Covers

This project walks through core R programming concepts and packages with real examples. Topics include:

* Data types and structures (vectors, matrices, data frames, lists, factors)
* Basic data visualization (plot, barplot, histograms, scatterplots)
* Package management using `pacman`
* Importing data (`readr`, `rio`, `readxl`, `read.csv`, etc.)
* Exploratory Data Analysis with base R and the `psych` package
* Data cleaning and manipulation
* Modeling basics: regression, clustering, and PCA
* Using `summary()`, `describe()`, and subsetting techniques

## File

* `practice_freecodecamp_video.R`: My full code walkthrough of the video, with notes, examples, and data exploration.

## Purpose

This is part of my structured R learning journey after completing the Swirl R course. My goal is to reinforce my real-world R skills and prepare for report building (Quarto, Shiny) and final portfolio projects.

## Next Steps

After this, I will be:

* Building an RMarkdown or Quarto report
* Testing out a simple Shiny dashboard
* Creating and publishing a portfolio-ready R project

Feel free to explore or reuse any part of this code if you're also learning R.

---

## Real Estate Sales Analysis (2001–2022)

This section presents an end-to-end analysis of real estate sales data from Connecticut between 2001 and 2022. I used R and Quarto to clean the data, explore trends, and generate visualizations that provide insights into property values and sales trends.

### Key Highlights

* Over 1 million property records analyzed after cleaning.
* Visualizations include sale amounts, assessed values, sales ratios, and yearly trends.
* Town-specific breakdowns show how markets evolved — e.g., Ansonia saw steady growth since 2000.
* Used `dplyr`, `ggplot2`, `stringr`, and `scales` to process and visualize the data.
* Report built with Quarto for easy readability and sharing.

### Files

* `real_estate_report.qmd` – the Quarto source file.
* `real_estate_report.html` – the rendered report.
* `Real_Estate_Sales_2001-2022_GL.csv` – dataset (not uploaded due to size; [source here](https://data.ct.gov/Property-Data/Real-Estate-Sales-2001-2022-GL/5mzw-sjtu)).

### Summary

This real estate project took a deep dive into property sales data from 2001 to 2022 across Connecticut. After cleaning and preparing the dataset, I explored trends, patterns, and differences in property types, towns, and price behaviors.

Some of the biggest takeaways include:

* Residential properties (especially single and two-family homes) make up most of the market.
* There’s a clear skew in sale amounts and assessed values — which is why I used log scales in the plots.
* Sales volumes changed year to year, and some towns consistently had higher average sale prices.
* A closer look at Ansonia helped show how a specific town’s market evolved over time.

Overall, this project helped me strengthen my skills in R — from data wrangling and visualization to telling a clear story with data. If I continue building on this, I’d love to turn it into an interactive dashboard using Shiny, or compare trends between multiple towns.
