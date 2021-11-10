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

# 4. Cancer ------------------------------------------------------------------

## 4.1 Table 2 ---------------------------------------------------------------



table4.1 <- tibble::tribble(
                              ~Characteristics, ~`Overall.(n.=.3634)`,
                                 "Male, N (%)",         "1655 (45.5)",
                 "Age at baseline (mean (SD))",        "64.46 (2.86)",
               "Educational attainment, N (%)",                    NA,
                                      "Higher",          "382 (10.5)",
                                "Intermediate",         "1634 (45.0)",
                                       "Lower",         "1594 (43.9)",
                 "Unknown history of diabetes",            "24 (0.7)",
                                "ApoE4, N (%)",                    NA,
                                 "Not carrier",         "2488 (71.7)",
                          "One allele carrier",          "888 (25.6)",
                          "Two allele carrier",            "96 (2.8)",
                       "Smoking status, N (%)",                    NA,
                                     "Current",          "922 (25.4)",
                                      "Former",         "1720 (47.3)",
                                       "Never",          "992 (27.3)",
                 "Body Mass Index (mean (SD))",        "26.59 (3.74)",
  "Systolic blood pressure (mmHg) (mean (SD))",      "138.68 (20.85)",
              "History of hypertension, N (%)",         "2126 (58.5)",
             "History of heart disease, N (%)",           "263 (7.4)",
               "Incident heart disease, N (%)",         "1022 (28.1)",
                      "No history of diabetes",         "2534 (69.7)",
                         "History of diabetes",          "374 (10.3)",
                 "Unknown history of diabetes",          "726 (20.0)",
                    "Incident diabetes, N (%)",          "718 (19.8)",
                    "History of stroke, N (%)",            "62 (1.7)",
                      "Incident stroke, N (%)",          "472 (13.0)",
                      "Incident cancer, N (%)",          "899 (24.7)"
  )

legend4.1 <- "SD: Standard deviation"

rio::export(table4.1, here::here("tables", "table4.1.RData"))

## 4.2. Table 2 --------------------------------------------------------------------

load(here::here("tables", "table4.2.RData"))
table4.2 <- x

legend4.2 <- "Scenario A represents the setting where cancer is defined as 'ever vs. never'; Scenario B represents the setting where cancer is defined as a time-varying proxy"



# 5. Systematic review ----------------------------------------------------


## 5.1 Table 1 --------------------------------------------------------------------

table5.1 <- tibble::tribble(
  ~ Characteristics,
  ~ `N.(%)`,
  "Exposure type",
  NA,
  "Time-fixed or time-varying measured at one time point",
  "45 (79%)",
  "Time-varying",
  "3 (5%)",
  "Time-varying treated as time-fixed",
  "9 (16%)",
  "Target causal parameter",
  NA,
  "Risk difference without elimination of death",
  "1 (2%)",
  "Unclear or not stated",
  "56 (98%)",
  "Median length of follow-up",
  NA,
  "1 to 3 years",
  "0",
  "3 to 5 years",
  "9 (16%)",
  "5 to 10 years",
  "20 (35%)",
  "10 to 15 years",
  "9 (16%)",
  "15 to 20 years",
  "5 (6%)",
  "Above 20 years",
  "14 (25%)",
  "Includes number or percentage of deaths",
  "32 (56%)",
  "Includes number or percentage of loss to follow-up",
  "32 (56%)",
  "Includes number or percentage of mortality by exposure level",
  "10 (18%)",
  "Information on how the competing event of death is handled in the analysis plan",
  NA,
  "Does not include any description of how the event of death was defined",
  "27 (47%)",
  "Only defined death as a censoring event",
  "8 (14%)",
  "Defines the event of death as part of a sensitivity analysis",
  "15 (26%)",
  "Defines the event of death as part of the main analysis with clear description of the methods/assumptions for valid estimation",
  "6 (11%)",
  "Unclear description",
  "1 (2%)",
  "Primary statistical method",
  NA,
  "Cox-proportional hazard model",
  "51 (89%)",
  "Cumulative incidence function",
  "1 (2%)",
  "Fine-Gray sub distribution hazard model",
  "2 (4%)",
  "Multistate model",
  "1 (2%)",
  "Poisson model",
  "1 (2%)",
  "Other",
  "1 (2%)",
  "Primary statistical measure",
  NA,
  "Hazard Ratios",
  "53 (93%)",
  "Risk Ratios",
  "2 (4%)",
  "Cumulative risks (absolute risk - risk difference)",
  "1 (1%)",
  "Sub-distribution hazard ratios",
  "1 (1%)",
  "Interpretation of the primary estimate given the competing event of death",
  NA,
  "No interpretation given",
  "4 (7%)",
  "Only interprets null hypothesis test",
  "3 (5%)",
  "Potentially incomplete/inaccurate interpretation",
  "49 (86%)",
  "Interpretation is explicitly defined as the target causal parameter",
  "1 (2%)",
  "Mentions mortality in discussion section",
  "18 (32%)"
)

legend5.1 <- "Abbreviation: N, number of articles"


# 6. Competing events  ---------------------------------------------------------------------


## 6.1 Table 1---------------------------------------------------------------------


## Table 1. Descriptive characteristics of former and current smokers in the Rotterdam Study

table6.1 <- tibble::tribble(
                                            ~"Characteristics", ~"Former smokers N = 2607", ~"Current smokers N = 1572",
                                                              "Age, mean years (SD)",  "62.35.(4.0)",     "61.69.(4.0)",
                                                                          "Women (%)",   "1090 (41.8)",    "780 (49.6)",
                                                                      "Education (%)",              NA,              NA,
                                                                  "Primary education",     "258 (9.9)",    "198 (12.6)",
              "Lower or intermediate general education OR lower vocational education",   "1080 (41.4)",    "693 (44.1)",
                      "Intermediate vocational education OR higher general education",    "862 (33.1)",    "483 (30.7)",
                                          "Higher vocational education OR university",    "399 (15.3)",    "190 (12.1)",
                                                                            "Unknown",       "8 (0.3)",       "8 (0.5)",
                                                                        "APOE-?4 (%)",              NA,              NA,
                                                                        "Non-carrier",   "1747 (67.0)",   "1074 (68.3)",
                                                                 "One allele carrier",    "687 (26.4)",    "380 (24.2)",
                                                                 "Two allele carrier",      "71 (2.7)",      "33 (2.1)",
                                                                            "Unknown",     "102 (3.9)",      "85 (5.4)",
                                            "Systolic blood pressure, mean mmHg (SD)", "137.59 (20.8)", "135.22 (21.3)",
                                                         "Body mass index, mean (SD)",   "26.93 (3.7)",   "25.86 (3.8)",
                                                   "Prevalent hypertension diagnosis",   "1468 (56.3)",    "767 (48.8)",
                                                               "Prevalent stroke (%)",      "52 (2.0)",      "23 (1.5)",
                                              "Prevalent heart disease diagnosis (%)",     "226 (8.7)",      "72 (4.6)",
                                                "Unknown heart disease diagnosis (%)",      "42 (1.6)",      "28 (1.8)",
                                                   "Prevalent diabetes diagnosis (%)",    "275 (10.5)",     "147 (9.4)",
                                                     "Unknown diabetes diagnosis (%)",    "389 (14.9)",    "364 (23.2)",
                                                     "Prevalent cancer diagnosis (%)",      "69 (2.6)",      "27 (1.7)"
              )

legend6.1 <- "Abbreviation: N, number of participants; SD, Standard deviation"


## 6.2 Table 2 -----------------------------------------------------------------

# Total effect and controlled direct effect of smoking cessation (compared to continued smoking) on the risk of dementia, and the total effect on risk of mortality, at 20 years of follow-up

table6.2 <- tibble::tribble(
                                             ~Causal.parameter, ~`Causal.Risk.Difference.(95%CI)`, ~`Causal.Risk.Ratio.(95%CI)`,
                                    "Total effect on dementia",                 "2.1 (-0.1, 4.2)",          "1.21 (0.99, 1.50)",
  "Controlled direct effect on dementia (with IPCW for death)",                "-1.9 (-5.1, 1.4)",          "0.89 (0.75, 1.10)",
                                   "Total effect on mortality",            "-17.4 (-20.5, -14.2)",          "0.68 (0.63, 0.72)"
  )

legend6.2 <- "Abbreviation: IPCW, Inverse probability censoring weights"
