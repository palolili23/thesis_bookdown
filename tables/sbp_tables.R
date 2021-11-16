# 3. SBP ------------------------------------------------------------------


## 3.1 Table 1 -------------------------------------------------------------

# Table 1. Characteristics of cohort at baseline (n=4930)

table3.1 <- tibble::tribble(
  ~"Characteristics", ~"Overall",
  "Female, n.(%)", "2824.(57.3)",
  "Age, mean (SD) (years)",   "66.2 (6.6)",
  "Apoe4 carrier, n (%)",             NA,
  "Not carrier",  "3388 (68.7)",
  "Carrier",  "1322 (26.8)",
  "Missing",    "220 (4.5)",
  "Education level, n (%)",             NA,
  "Primary",  "2378 (48.6)",
  "Further",  "2044 (41.8)",
  "Higher",    "472 (9.6)",
  "MMSE, mean (SD)",   "28.2 (1.2)",
  "BMI, mean (SD) (kg/m2)",   "26.3 (3.6)",
  "Cigarettes smoking, n (%)",             NA,
  "Never",  "1551 (31.5)",
  "Former",  "2193 (44.5)",
  "Current",  "1186 (24.1)",
  "Alcohol intake, mean (SD) (g/day)",  "10.7 (15.3)",
  "Systolic blood pressure, mean (SD)  (mmHg)", "137.3 (21.5)",
  "Total cholesterol, mean (SD) (mmol/dl)",    "6.7 (1.2)",
  "HDL, mean (SD) (mmol/dl)",    "1.4 (0.4)",
  "Prevalent hypertension, n (%)",  "2789 (56.6)",
  "Hypertension medication, n (%)",  "1360 (27.6)",
  "Prevalent heart disease, n (%)",    "368 (7.7)",
  "Prevalent cancer, n (%)",     "20 (0.4)",
  "Prevalent diabetes, n (%)",   "432 (12.9)"
)

legend3.1 <- "MMSE: Mini Mental State Examination; BMI: Body Mass Index; HDL: High density lipoproteins"


## 3.2 Table 2 -------------------------------------------------------------

# Table 2. Risk of stroke at 15 years of follow-up under natural course and hypothetical interventions 

table3.2 <- tibble::tribble(
  ~"No",                           ~"Intervention", ~"Absolute Risk (95% CI)", ~"Risk Ratio (95% CI)", ~"Risk Difference (95% CI)", ~"Total Intervened (%)",
  0L,                        "Natural course",        "10.3 (9.3, 11.5)",           "1 (1 to 1)",                "0 (0 to 0)",                       0,
  1L,        "Maintaining SBP below 120 mmHg",           "9 (7.5, 10.7)",    "0.87 (0.74, 1.02)",          "-1.3 (-2.8, 0.2)",                    97.8,
  2L,        "Maintaining SBP below 140 mmHg",         "9.3 (8.2, 10.6)",     "0.9 (0.83, 0.98)",           "-1 (-1.8, -0.2)",                    83.5,
  3L, "Reducing SBP by 10% if above 140 mmHg",           "9.3 (8, 10.6)",      "0.9 (0.8, 0.98)",         "-1.1 (-2.1, -0.2)",                    82.7,
  4L, "Reducing SBP by 20% if above 140 mmHg",         "9.2 (7.8, 10.6)",       "0.89 (0.76, 1)",            "-1.1 (-2.5, 0)",                    82.7,
  5L,                      "Quitting smoking",         "9.6 (8.6, 10.8)",    "0.93 (0.89, 0.97)",         "-0.7 (-1.2, -0.3)",                    25.9,
  6L,                           "Joint 1 + 5",           "8.3 (6.9, 10)",    "0.81 (0.68, 0.95)",           "-2 (-3.4, -0.5)",                    98.7,
  7L,                           "Joint 2 + 5",          "8.8 (7.6, 9.9)",    "0.85 (0.76, 0.92)",         "-1.6 (-2.6, -0.8)",                    88.6,
  8L,                           "Joint 3 + 5",          "8.6 (7.4, 9.8)",    "0.83 (0.74, 0.92)",         "-1.7 (-2.8, -0.8)",                    88.2,
  9L,                           "Joint 4 + 5",          "8.5 (7.2, 9.9)",    "0.83 (0.71, 0.94)",         "-1.8 (-3.1, -0.6)",                    88.2
)

legend3.2 <-"SBP: Systolic blood pressure (mmHg). Estimates were based using the parametric g-formula with fixed covariates: age, sex, education, systolic blood pressure, history of diabetes and history of heart disease at baseline; and time-varying covariates: visit process, smoking status, systolic blood pressure, body mass index, hypertension medication, total cholesterol and diagnosis of diabetes, heart disease, Parkinson disease, Parkinsonism, transient ischemic attack, dementia or cancer."


## 3.3 Table 3 -------------------------------------------------------------

"Table 3. Risk of dementia at 15 years of follow-up under natural course and hypothetical interventions"

table3.3 <- tibble::tribble(
  ~ "No",
  ~ "Intervention",
  ~ "Absolute Risk (95% CI)",
  ~ "Risk Ratio (95% CI)",
  ~ "Risk Difference (95% CI)",
  ~ "Total Intervened (%)",
  0L,
  "Natural course",
  "9.2 (8.2, 10.3)",
  "1 (1, 1)",
  "0 (0, 0)",
  0,
  1L,
  "Maintaining SBP below 120 mmHg",
  "9.7 (8, 11.9)",
  "1.06 (0.9, 1.24)",
  "0.6 (-0.9, 2.2)",
  98.2,
  2L,
  "Maintaining SBP below 140 mmHg",
  "9.2 (8, 10.7)",
  "1.01 (0.92, 1.09)",
  "0.1 (-0.7, 0.8)",
  83,
  3L,
  "Reducing SBP by 10% if above 140 mmHg",
  "9.2 (8, 10.9)",
  "1.01 (0.92, 1.11)",
  "0 (-0.8, 1)",
  83.3,
  4L,
  "Reducing SBP by 20% if above 140 mmHg",
  "9.5 (8, 11.4)",
  "1.04 (0.91, 1.18)",
  "0.3 (-0.8, 1.7)",
  83.3,
  5L,
  "Quitting smoking",
  "9.3 (8.4, 10.6)",
  "1.01 (0.98, 1.06)",
  "0.1 (-0.2, 0.5)",
  25.9,
  6L,
  "Joint 1 + 5",
  "9.9 (8, 12.2)",
  "1.08 (0.92, 1.26)",
  "0.8 (-0.8, 2.4)",
  98.8,
  7L,
  "Joint 2 + 5",
  "9.3 (8.1, 10.9)",
  "1.02 (0.93, 1.12)",
  "0.2 (-0.6, 1.1)",
  88.2,
  8L,
  "Joint 3 + 5",
  "9.3 (8, 11.1)",
  "1.02 (0.93, 1.14)",
  "0.2 (-0.7, 1.3)",
  88.6,
  9L,
  "Joint 4 + 5",
  "9.6 (8, 11.6)",
  "1.05 (0.92, 1.2)",
  "0.4 (-0.7, 2)",
  88.6
)


legend3.3. <- 
  "SBP: Systolic blood pressure (mmHg). Estimates were based using the parametric g-formula with fixed covariates: age, sex, education, systolic blood pressure, history of diabetes and history of heart disease at baseline; and time-varying covariates: visit process, smoking status, systolic blood pressure, body mass index, hypertension medication, total cholesterol and diagnosis of diabetes, heart disease, Parkinson disease, Parkinsonism, transient ischemic attack, dementia or cancer."


## 3.4 Supplementary -----------------------------------------------------------

table3e1 <- tibble::tribble(
  ~ "Section",
  ~"Target trial",
  ~ "Emulation using observation data",
  "Aim",
  "To estimate the effect of joint interventions on 15-year risk of stroke among people at risk",
  "Same",
  "Eligibility criteria",
  "Individuals below 80 years old, with no prior history of stroke or transient ischemic attack, cognitive impairment, dementia diagnosis or Parkinson’s disease or Parkinsonism.",
  "Same plus MMSE above 26 at baseline.",
  "Treatment strategies",
  "1. Maintaining SBP below 120 mmHg",
  "Same",
  NA,
  "2. Maintaining SBP below 140 mmHg",
  NA,
  NA,
  "3. Reducing SBP by 10% if above 140 mmHg",
  NA,
  NA,
  "4. Reducing SBP by 20% if above 140 mmHg",
  NA,
  NA,
  "5. Quitting smoking",
  NA,
  NA,
  "6. Joint 1 + 5",
  NA,
  NA,
  "7. Joint 2 + 5",
  NA,
  NA,
  "8. Joint 3 + 5",
  NA,
  NA,
  "9. Joint 4 + 5.",
  NA,
  "Comparison arm",
  "Natural course",
  "Same",
  "Follow-up",
  "Starts at first visit, ends after stroke diagnosis, death, lost to follow up or after 15 years since baseline, which ever happens first. Annual checkups during trial to assess adherence and adverse effects.",
  "Same plus simulate visit process",
  "Outcome",
  "Stroke (Death as competing risk)",
  "Same",
  "Causal contrast of interest",
  "What would have been observed if all individuals adhered to their assigned strategy over the 15 years of follow-up (Per protocol effect)",
  "Same",
  "Statistical analysis",
  "Comparison of 15 year-risk of stroke between groups that received each treatment strategy, adjusted for post-baseline confounders associated with adherence to the treatment strategies and lost to follow-up",
  "Same as per-protocol effect + adjustment of baseline"
)


## 3.5 Supplementary -----------------------------------------------------------

table3e2 <- tibble::tribble(
  ~"Characteristics",        ~"Included (n = 4930)",        ~"Excluded (n = 263)",
  "Age in years, mean (SD)",   "66.23 (6.6)",   "69.00 (6.9)",
  "Women (%)",  "2824 (57.3)",   "155 (58.9)",
  "Apoe 4 carrier",  "1322 (28.1)",    "59 (30.7)",
  "Education",               NA,               NA,
  "Primary", "2378 (48.6)", "122 (56.5)",
  "Further", "2044 (41.8)", "78 (36.1)",
  "Higher", "472 (9.6)", "16 (7.4)",
  "Prevalent heart disease", "368 (7.7)", "22 (13.3)",
  "Prevalent diabetes", "432 (12.9)", "16 (16.3)",
  "Prevalent cancer", "20 (0.4)",  "1 (0.4)")


## 3.5 Supplementary -----------------------------------------------------------

table3e3a <- tibble::tribble(
  ~ "Time-fixed.covariates", ~ "Assessed", ~ "Functional form when used as predictor",
  ~ "Categories",
  "Age at baseline", "1st visit", NA, NA, 
  "Education at baseline", "1st visit", "4 cathegories",
  "Higher (4); Further (3); Primary (2); Missing (1)",
  "Sex", "1st visit", "2 cathegories", "Female; male",
  "Apoe 4 carrier", "1st visit", "3 categories", 
  "Non carrier (3); Carrier (2); Missing (1)",
  "History of diabetes at baseline", "1st visit", "Indicator", "Yes;No",
  "History of heart disease diagnosis at baseline", 
  "1st visit", "Indicator", "Yes; No"
)

table3e3b <- tibble::tribble(
  ~ "Time-varying covariates",
  ~ "Assessed",
  ~ "Functional form when used as predictor",
  ~ "Cathegories",
  "Second visit",
  "Between year 1 and year 5",
  "Indicator and time since switch",
  "N/A",
  "Third visit",
  "Between year 5 and year 9 and only if visit 2 happened",
  "Indicator and time since switch",
  "N/A",
  "Fourth visit",
  "Between year 5 and year 14 and only if visit 3 happened",
  "Indicator and time since switch",
  "N/A",
  "Smoking status",
  "1st - 4th visit",
  "3 categories",
  "Current (3); Former (2); Never (1)",
  "Alcohol intake (g/day)",
  "1st - 4th visit",
  "5 categories",
  ">= 10 g/day (5);  5 - 10 g/day (4); 1 - 5 g/day  (3); < 1  g/day (2); Missing (1)",
  "Systolic blood pressure (mmHg)",
  "1st - 4th visit",
  "Continuous",
  "N/A",
  "Body mass index",
  "1st - 4th visit",
  "Continuous",
  "Splines in 18.5 20 25 30",
  "Hypertension medication",
  "1st - 4th visit",
  "Indicator",
  "Yes/No",
  "Total Cholesterol",
  "1st, 3rd, 4th visit",
  "4 Categories",
  ">= 6.21 (4); > 5.17 & <6.21 (3); <= 5.17  (2);  Missing (1)",
  "Diagnosis of diabetes type 2",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A",
  "Diagnosis of heart disease",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A",
  "Diagnosis of Parkinson’s Disease or Parkinsonism",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A",
  "Diagnosis of transient ischemic attack",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A",
  "Diagnosis of stroke",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A",
  "Diagnosis of cancer",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A",
  "Diagnosis of dementia",
  "Year of diagnosis",
  "Indicator and time since switch",
  "N/A"
)


