# 4. Cancer ------------------------------------------------------------------

## 4.1 Table 2 ---------------------------------------------------------------

table4.1 <- tibble::tribble(
                              ~Characteristics, ~`Overall (n = 3634)`,
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


## 4.2. Table 2 --------------------------------------------------------------------

table4.2 <- tibble::tribble(
  ~ `Scenario`,
  ~ `Model`,
  ~ `Risk Difference (95%CI)`,
  ~ `Risk Ratio (95%CI)`,
  ~ `Hazard Ratio (95%CI)`,
  "A",
  "Unadjusted",
  "-5.9 (-10.4,-1.1)",
  "0.71 (0.49,0.95)",
  "0.51 (0.39,0.68)",
  "B",
  "Unadjusted",
  "-1.4 (-5.0,3.0)",
  "0.94 (0.78,1.15)",
  "0.95 (0.71,1.27)",
  "A",
  "With weights for confounding",
  "-6.0 (-10.6,-1.4)",
  "0.70 (0.49,0.93)",
  "0.52 (0.39,0.69)",
  "B",
  "With weights for confounding",
  "-0.3 (-6.7,3.8)",
  "0.98 (0.71,1.19)",
  "1.03 (0.76,1.39)",
  "A",
  "With weights for confounding and for censoring for death",
  "-2.0 (-7.7,3.9)",
  "0.91 (0.65,1.19)",
  "0.72 (0.54,0.98)",
  "B",
  "With weights for confounding and for censoring for death",
  "1.2 (-5.0,6.4)",
  "1.05 (0.79,1.29)",
  "1.09 (0.80,1.50)"
)

legend4.2 <- "Scenario A represents the setting where cancer is defined as 'ever vs. never'; Scenario B represents the setting where cancer is defined as a time-varying proxy"
