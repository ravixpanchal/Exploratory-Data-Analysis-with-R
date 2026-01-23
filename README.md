# Exploratory Data Analysis with R 📊✨

Welcome to **Exploratory Data Analysis (EDA) with R** — a complete course-based repository covering **R fundamentals, data preparation, EDA concepts, statistical measures, visualization (base R + ggplot2), correlation, linear models, text data analysis**, and **multivariate EDA**.

This repository is structured **week-wise (Week 1 to Week 12)** with clear explanations, code, practice datasets, and mini tasks.

---

## 🚀 What You Will Learn

✅ R basics & important commands  
✅ Data Preparation & Cleaning  
✅ Frequency distribution & CDF  
✅ 1D graphs using base R  
✅ Advanced visualization using **ggplot2**  
✅ Measures of central tendency & variation  
✅ Moments, skewness & kurtosis  
✅ Scaling of data & association visualizations  
✅ Correlation (Pearson / Spearman / Rank correlation)  
✅ Association of discrete variables  
✅ Linear models (Regression basics)  
✅ Text data handling + text analysis  
✅ Sampling (Simple Random Sampling)  
✅ Multivariate exploratory data analysis  

---

## 🧠 Course Roadmap (Week-wise)

### ✅ Week 1: Introduction to R
- R software setup & interface
- Basic commands
- Data types, variables, vectors, lists
- Basic input/output

### ✅ Week 2: Data Preparation + Basic EDA
- Import/export datasets (CSV, Excel)
- Cleaning missing values
- Frequency & frequency distribution
- CDF (Cumulative Distribution Function)
- EDA basics using R

### ✅ Week 3: Graphical Procedures (1D Graphs - Base R)
- Histogram
- Boxplot
- Barplot
- Pie chart
- Stem & leaf plot

### ✅ Week 4: Graphical Procedures using `ggplot2`
- ggplot2 basics
- histograms / bar charts
- box plot / violin plot
- themes, labels, colors
- multiple plots

### ✅ Week 5: Measures of Central Tendency
- Mean, Median, Mode
- Weighted mean
- Summary using R functions

### ✅ Week 6: Measures of Variation
- Range, variance, standard deviation
- Quartiles & IQR
- coefficient of variation

### ✅ Week 7: Moments
- Raw moments
- Central moments
- Use in R

### ✅ Week 8: Skewness, Kurtosis + Scaling of Data
- Skewness and interpretation
- Kurtosis and interpretation
- Standardization / Normalization
- Graphs for association of variables

### ✅ Week 9: Association of Variables (Continuous)
- Scatter plots
- Covariance
- Correlation coefficients (Pearson)
- Correlation matrix in R

### ✅ Week 10: Rank correlation + Discrete Variables
- Spearman correlation
- Kendall correlation
- Association of discrete variables
- Contingency tables

### ✅ Week 11: Linear Models + Text Handling
- Linear regression basics
- `lm()` function
- Model summary, interpretation
- text data handling in R

### ✅ Week 12: Text Analysis + Sampling + Multivariate EDA
- Text preprocessing
- Tokenization basics
- Sampling methods
- Simple random sampling
- Multivariate EDA

---

## 📁 Repository Structure

```bash
Exploratory-Data-Analysis-with-R/
│
├── Week_01_Introduction_to_R/
├── Week_02_Data_Preparation_and_Basic_EDA/
├── Week_03_1D_Graphs_Base_R/
├── Week_04_ggplot2_Graphs/
├── Week_05_Central_Tendency/
├── Week_06_Measures_of_Variation/
├── Week_07_Moments/
├── Week_08_Skewness_Kurtosis_Scaling/
├── Week_09_Association_Continuous_Variables/
├── Week_10_Rank_Correlation_Discrete_Association/
├── Week_11_Linear_Models_Text_Handling/
├── Week_12_Text_Analysis_Sampling_Multivariate_EDA/
│
├── datasets/
├── projects/
├── cheatsheets/
├── README.md
└── requirements.md


install.packages(c(
  "ggplot2",
  "dplyr",
  "tidyr",
  "readr",
  "stringr",
  "lubridate",
  "caret",
  "corrplot"
))


git clone https://github.com/<your-username>/Exploratory-Data-Analysis-with-R.git

source("Week_01_Introduction_to_R/script.R")
