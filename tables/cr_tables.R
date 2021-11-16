# 6. Competing events  ---------------------------------------------------------------------


## 6.1 Table 1---------------------------------------------------------------------


## Table 1. Descriptive characteristics of former and current smokers in the Rotterdam Study

table6.1 <- tibble::tribble(
  ~ "Characteristics",
  ~ "Former smokers N = 2607",
  ~ "Current smokers N = 1572",
  "Age, mean years (SD)",
  "62.4 (4.0)",
  "61.7 (4.0)",
  "Women (%)",
  "1090 (41.8)",
  "780 (49.6)",
  "Education (%)",
  NA,
  NA,
  "Primary education",
  "258 (9.9)",
  "198 (12.6)",
  "Lower or intermediate general education OR lower vocational education",
  "1080 (41.4)",
  "693 (44.1)",
  "Intermediate vocational education OR higher general education",
  "862 (33.1)",
  "483 (30.7)",
  "Higher vocational education OR university",
  "399 (15.3)",
  "190 (12.1)",
  "Unknown",
  "8 (0.3)",
  "8 (0.5)",
  "APOE-e4 (%)",
  NA,
  NA,
  "Non-carrier",
  "1747 (67.0)",
  "1074 (68.3)",
  "One allele carrier",
  "687 (26.4)",
  "380 (24.2)",
  "Two allele carrier",
  "71 (2.7)",
  "33 (2.1)",
  "Unknown",
  "102 (3.9)",
  "85 (5.4)",
  "Systolic blood pressure, mean mmHg (SD)",
  "137.6 (20.8)",
  "135.2 (21.3)",
  "Body mass index, mean (SD)",
  "26.9 (3.7)",
  "25.9 (3.8)",
  "Prevalent hypertension diagnosis",
  "1468 (56.3)",
  "767 (48.8)",
  "Prevalent stroke (%)",
  "52 (2.0)",
  "23 (1.5)",
  "Prevalent heart disease diagnosis (%)",
  "226 (8.7)",
  "72 (4.6)",
  "Unknown heart disease diagnosis (%)",
  "42 (1.6)",
  "28 (1.8)",
  "Prevalent diabetes diagnosis (%)",
  "275 (10.5)",
  "147 (9.4)",
  "Unknown diabetes diagnosis (%)",
  "389 (14.9)",
  "364 (23.2)",
  "Prevalent cancer diagnosis (%)",
  "69 (2.6)",
  "27 (1.7)"
)

legend6.1 <- "Abbreviation: N, number of participants; SD, Standard deviation"


## 6.2 Table 2 -----------------------------------------------------------------

# Total effect and controlled direct effect of smoking cessation (compared to continued smoking) on the risk of dementia, and the total effect on risk of mortality, at 20 years of follow-up

table6.2 <- tibble::tribble(
  ~ `Causal parameter`,
  ~ `Risk Difference (95%CI)`,
  ~ `Risk Ratio (95%CI)`,
  "Total effect on dementia",
  "2.1 (-0.1, 4.2)",
  "1.21 (0.99, 1.50)",
  "Controlled direct effect on dementia (with IPCW for death)",
  "-1.9 (-5.1, 1.4)",
  "0.89 (0.75, 1.10)",
  "Total effect on mortality",
  "-17.4 (-20.5, -14.2)",
  "0.68 (0.63, 0.72)"
)

legend6.2 <- "Abbreviation: IPCW, Inverse probability censoring weights"
