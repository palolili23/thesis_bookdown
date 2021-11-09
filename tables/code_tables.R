library(tidyverse)

#

# 2. Statins --------------------------------------------------------------

## 2.1 Table 1 -------------------------------------------------------------

table2.1 <-
  tibble::tribble(
    ~ "Section",
    ~ "Target trial protocol",
    ~ "Emulation using observational data",
    "Eligibility criteria",
    "Age 55 - 80 years at enrollment,
    no statin prescription in the previous 2 years, 
    known to be dementia free, MMSE >=26 at enrollment;
    cholesterol, BMI and SBP measurement at enrollment",
    "Same, except MMSE which is measured within the previous 3 years",
    "Treatment strategies",
    "1. Initiate statin therapy at baseline and remain on it during the follow-up unless serious illnes occurs <br>
     2. Refrain from taking statin therapy during the follow-up unless serious illness occurs",
    "Same",
    "Randomized assignment",
    "Random assignment to either strategy at baseline",
    "Participants are assumed to be randomly assigned at
baseline within levels of sex, educational attainment, age,
calendar year, smoking status, MMSE, BMI, APOE-ε4 carrier status, cholesterol, SBP, stroke, smoking status,
diabetes, cancer, heart disease (defined as any history of
atrial fibrillation, heart failure, myocardial infarction or
revascularization), and other medication",
    "Start/End of follow-up",
    "From baseline until dementia dx, death, or loss to follow-up (10 years without an MMSE measurement), or January 1st, 2015, which ever happened first",
    "Same",
    "Outcome",
    "Dementia (Death as a censoring event),
     Composite outcome: dementia or death", 
    "Same",
    "Causal contrast",
    "Modified intention-to-treat. 
    Per-protocol effect",
    "Same",
    "Analysis plan",
    "Modified intention-to-treat analysis
    Per-protocol analysis",
    "Same modified intention-to-treat analysis, 
    except that estimates are adjusted for baseline variables.
    Same per-protocol analysis, except tat time since most recent MMSE measurement 
    and time since most recent cholesterol measurement are included as baseline
    covariates",
    )

rio::export(table2.1, here::here("tables", "table2.1.RData"))

legend2.1 <- "Serious illness defined as cancer or heart disease. Following a serious illness, participants may or may not take statin therapy,
as guided by their physicians"


## 2.2 Table 2 ---------------------------------------------------------------

table2.2 <- tibble::tribble(
                                ~"Characteristic",
                                         ~"Non-initiators 232,904 person-trials",
                                                    ~"Initiators 622 person-trials",
                                          "Male (%)", "43.0%", "45.7%",
                    "Age, mean years (SD)", "69.4 (5.6)", "69.4 (5.0)",
                   "MMSE, mean score (SD)", "28.3 (1.2)", "28.2 (1.3)",
              "Body mass index, mean (SD)", "27.0 (3.9)", "27.8 (4.4)",
              "Highest educational attainment (%)", NA, NA,
              "Primary", "9.7%",   "9.5%",
              "Lower/intermediate general or lower vocational", "43.7%","44.7%",
                     "Intermediate vocational or higher general","31.8%","33.0%", 
                               "Higher vocational or university", "13.7%","12.1%",
                                                       "Unknown","1.2%", "0.8%",
                                               "APOE-e4 carrier", NA, NA,
                                                           "Yes","25.8%","28.3%",
                                                            "No","70.2%","66.4%",
                                                       "Missing","4.0%","5.3%",
                           "Total cholesterol, mean mmol/L (SD)","6.01 (1.01)","6.49 (1.15)",
                            "Total cholesterol < 5.2 mmol/L (%)","20.5%","14.3%",
                          "Total cholesterol 5.2-6.2 mmol/L (%)","39.9%","26.5%",
                             "Total cholesterol >6.2 mmol/L (%)","39.6%","59.2%",
  "Systolic blood pressure, mmHg (SD)", "142.7 (20.9)", "147.5 (21.5)",
                                            "Smoking status (%)", NA, NA,
                                                         "Never","30.9%","24.9%",
                                             "current or former","66.9%","72.8%",
                                                       "Missing", "2.3%", "2.3%",
                      "History of heart disease* (%)", "9.0%", "19.1%",
                               "History of stroke (%)", "1.8%", "7.7%",
                                         "History of cancer (%)", NA, NA,
                                                            "No", "92.5%", "93.6%",
                                                           "Yes",  "5.8%",  "5.1%",
                                                       "Missing",  "1.7%",  "1.3%",
                                       "History of diabetes (%)", NA, NA,
                                                            "No","93.5%","86.2%",
                                                           "Yes", "4.0%","11.6%",
                                                       "Missing", "2.5%", "2.4%",
                   "Current use of other prescription drugs (%)", NA, NA,
                                             "Antihypertensives","0.8", "0.8%",
                                                     "Diuretics","11.1%", "17.9%",
                                              "Beta-blockers", "15.7%", "29.7%",
                                        "Calcium antagonists", "6.0%", "14.8%",
                                            "RAAS inhibitors", "12.0%", "24.8%",
                                 "Other lipid lowering drugs", "0.5%", "1.6%",
                                                     "NSAIDs", "7.3%", "8.0%",
                                            "Psychotropics**", "12.0%", "15.0%",
                                                    "Aspirin", "11.5%", "30.7%")

legend2.2 <- "* Defined as any history of atrial fibrillation, heart failure, myocardial infarction or 
revascularization"
legend2.22 <- "**Defined as antidepressants, antipsychotics, or benzodiazepines"

rio::export(table2.2, here::here("tables", "table2.2.RData"))

## 2.3 Table 3 ------------------------------------------------------------

# table3 <- tibble::tribble(
#                   ~`5-year.risk.of.dementia`,  ~No statins,   ~`2.8.(2.6,.3.2)`, ~`0.0.(reference)`,   ~`2.9.(2.6,.3.2)`,   ~`2.8.(2.5,.3.2)`,   ~`0.0.(reference)`,
#                    "5-year risk of dementia",    "Statins",    "2.4 (1.5, 3.3)", "-0.4 (-1.3, 0.5)",    "2.2 (1.1, 3.3)",    "1.8 (0.7, 3.2)",   "-1.1 (-2.2, 0.5)",
#                   "10-year risk of dementia", "No statins",    "8.6 (7.9, 9.4)",  "0.0 (reference)",    "8.7 (7.9, 9.6)",    "8.7 (7.8, 9.7)",    "0.0 (reference)",
#                   "10-year risk of dementia",    "Statins",   "8.5 (6.2, 10.5)", "-0.1 (-2.3, 1.8)",   "7.3 (4.4, 10.2)",   "6.6 (3.4, 10.6)",   "-2.2 (-5.2, 1.6)",
#              "5-year risk of dementia/death", "No statins", "11.1 (10.6, 11.8)",  "0.0 (reference)", "11.3 (10.8, 11.9)", "11.2 (10.6, 11.8)",    "0.0 (reference)",
#              "5-year risk of dementia/death",    "Statins",  "10.7 (8.9, 12.8)", "-0.4 (-2.2, 1.4)",  "10.4 (8.2, 13.0)",   "8.5 (5.4, 11.1)",   "-2.7 (-5.3, 0.1)",
#             "10-year risk of dementia/death", "No statins", "26.0 (24.9, 27.1)",  "0.0 (reference)", "26.3 (25.2, 27.3)", "26.1 (24.8, 27.3)",    "0.0 (reference)",
#             "10-year risk of dementia/death",    "Statins", "26.3 (23.1, 29.3)",  "0.3 (-2.7, 3.3)", "25.0 (21.0, 28.8)", "21.0 (15.6, 25.7)", "-5.1 (-10.5, -1.1)",
#                                           NA,           NA,                  NA,                 NA,                  NA,                  NA,                   NA
#             )


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

rio::export(table3.1, here::here("tables", "table3.1.RData"))


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

legend3.2 <-"SBP: Systolic blood pressure (mmHg). Estimates were based using the parametric
g-formula with fixed covariates: age, sex, education, 
systolic blood pressure, history of diabetes and history 
of heart disease at baseline; and time-varying covariates: 
visit process, smoking status, systolic blood pressure, 
body mass index, hypertension medication, total cholesterol and
diagnosis of diabetes, heart disease, Parkinson disease,  
Parkinsonism, transient ischemic attack, dementia or cancer."

rio::export(table3.2, here::here("tables", "table3.2.RData"))

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
  "SBP: Systolic blood pressure (mmHg).
Estimates were based using the parametric g-formula with fixed covariates: age, sex, education, systolic blood pressure, history of diabetes and history of heart disease at baseline; and time-varying covariates: visit process, smoking status, systolic blood pressure, body mass index, hypertension medication, total cholesterol and diagnosis of diabetes, heart disease, Parkinson disease, Parkinsonism, transient ischemic attack, dementia or cancer.
"
rio::export(table3.3, here::here("tables", "table3.3.RData"))

## 4. Cancer

### 4.1. Table 1
