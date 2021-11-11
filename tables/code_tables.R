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
