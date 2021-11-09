# Emulating a target trial of statin use and risk of dementia using cohort data {#chapter2}

\small
\noindent
_This chapter has been published as_: 

Caniglia, E.C., Rojas-Saunero L.P., Hilal S., Licher S., Logan R., Stricker B., Ikram M. A., Swanson S.A. Emulating a target trial of statin use and risk of dementia using cohort data. _Neurology_.2020; 95 (10): e1322-e1332; 
<https://doi.org/10.1212/WNL.0000000000010433>

\newpage
\normalsize



\chaptermark{Statins and dementia}

\newpage

## Abstract

**Objective:** Observational data can be used to attempt to emulate a target trial of statin use and estimate analogues of intention-to-treat and per-protocol effects on dementia risk. 

**Methods:** Using data from a prospective cohort study in the Netherlands, we conceptualized a sequence of “trials” in which eligible individuals ages 55-80 years were classified as statin initiators or non-initiators for every consecutive month between 1993 and 2007 and were followed until diagnosis of dementia, death, loss to follow-up, or the end of follow-up. We estimated two types of effects of statin use on dementia and a combined endpoint of dementia or death: the effect of initiation versus no initiation and the effect of sustained use versus no use. We estimated risk by statin treatment strategy over time via pooled logistic regression. We used inverse-probability weighting to account for treatment-confounder feedback in estimation of per-protocol effects.

**Results:** Of 233,526 eligible person-trials (6,373 individuals), there were 622 initiators and 232,904 non-initiators. Comparing statin initiation with no initiation, the 10-year risk differences (95% CI) were -0.1% (-2.3%, 1.8%) for dementia and 0.3% (-2.7%, 3.3%) for dementia or death. Comparing sustained statin use versus no use, the 10-year risk differences were -2.2% (-5.2%, 1.6%) for dementia and -5.1% (-10.5%, -1.1%) for dementia or death.

**Conclusions:** Individuals with sustained statin use, but not statin initiation alone, had reduced 10-year risks of dementia and dementia or death. Our results should be interpreted with caution due to the small number of initiators and events, and potential for residual confounding.

\newpage

## Introduction

The effect of a commonly prescribed medication on reducing the long-term risk of chronic
diseases is often of interest in public health research. However, estimating the effect of a medication for primary prevention can be challenging because it typically requires enrolling disease-free asymptomatic adults and following them for several years. Moreover, the effect of sustained medication use may be of great value for informing personal, clinical, or public health decision-making, even though randomized clinical trials often emphasize or solely estimate an intention-to-treat effect regardless of sustained use[@hernan_itt2012].

For example, use of statin therapy in adults without cognitive impairment could change dementia risk later in life. The effects of statin use for primary and secondary prevention of cardiovascular disease in a general population are well established[@naci2013; @taylor2013; @udell2006]. However, randomized trials[@mrc2002; @trompet2010] and several observational studies assessing the association between statin use and Alzheimer’s disease or dementia have had conflicting results ranging from statins potentially increasing, decreasing, or having a negligible effect on these outcomes. Overall, the randomized trials have included individuals at high risk of vascular disease, have had relatively short follow-up times (5 years or less), and have reported the intention-to-treat effect only[@mrc2002; @trompet2010]. Meanwhile, comparable observational studies have notable limitations[@power2015]. For example, studies that only assess statin use at baseline are by definition limited by the number of individuals who are statin users at baseline[@arvanitakis2008; @szwast2007; @zandi2005; @ancelin2012; @smeeth2009; @wolozin2007], studies that assess statin use at the time of incident dementia (or with a 1-year or 2-year lag) could be particularly susceptible to reverse causation[@haag2009; @cramer2008; @bettermann2012; @beydoun2011; @li2004; @li2010; @rea2005], studies that assess statin use as a time-varying variable using stratification-based techniques could be susceptible to bias due to inappropriate adjustment for time-varying confounding[@bettermann2012; @beydoun2011; @bernick2005; @sparks2008; @steenland2013; @starr2004; @cox2010], and studies that include prevalent statin users could be susceptible to selection bias[@arvanitakis2008; @szwast2007; @zandi2005; @ancelin2012; @wolozin2007; @haag2009; @cramer2008; @beydoun2011; @li2004; @li2010; @rea2005; @bernick2005; @steenland2013; @starr2004]. Finally, methods to estimate the effect of sustained statin treatment over follow-up time in addition to the effect of initiating statin treatment are underutilized in analyses of randomized trials and observational studies alike[@ray2003].

To overcome some of the challenges of randomized clinical trials, we emulate a hypothetical randomized trial – a target trial – for estimating observational analogues to intention-to-treat and per-protocol effects of statin on dementia[28]. Through explicitly describing and emulating the target trial, we can leverage the richness of observational data while avoiding selection and residual confounding biases that are consequences of common flaws in observational studies’ design and analyses. The advantages of the target trial framework may be particularly pertinent in pharmacoepidemiologic research where time-varying variables can be both causes and consequences of treatment. Here, we describe the protocol of the target trial and then how to emulate it using observational data from the Rotterdam Study. Since few individuals initiate statins in a given calendar month, we emulate a sequence of target trials where, at each calendar month, eligibility criteria are applied anew and eligible individuals are then assigned to statin initiation or non-initiation [@danaei2013; @danaei2018].

## Methods

_Standard Protocol Approvals, Registrations, and Patient Consents_

The medical ethics committee of the Erasmus Medical Centre approved the study. Written
informed consent was obtained from all patients participating in the study.

_Study population_

This study is embedded in the Rotterdam Study, a prospective cohort study initially including 7983 individuals aged 55 years or older living in Ommoord, a district of Rotterdam, the Netherlands[@hofman2015]. Individuals living in the district were invited to participate in the cohort between 1990 and 1993. Home visits and center visits were conducted at enrollment (1990-1993) and again at follow-up visits in 1993-1995, 1997-1999, 2002-2004, 2009-2011, and 2014-2015. Demographic, clinical, and lifestyle factors were measured and recorded at each visit. In 2000, 3011 individuals who had become 55 years of age or moved into the study district since the start of the study were added to the cohort. Home visits and examinations were conducted at enrollment (2000-2001) and again at follow-up visits in 2004-2005, 2011-2012, and 2014-2015.

_Statin measurement_

Complete information on all prescriptions filled at any of seven automated pharmacies serving the Ommoord area (>99% of participants) were available for individuals enrolled in the Rotterdam Study starting on January 1, 1991[@hofman2015]. Simvastatin, pravastatin, fluvastatin, atorvastatin, cerivastatin, and rosuvastatin were classified as statins based on Anatomical Therapeutic Chemical (ATC) codes. Statins were approved in 1990 onwards in the Netherlands, with simvastatin the most commonly prescribed statin[@mantel2002]. The duration of a prescription was calculated as the total number of delivered units divided by the prescribed daily number of units.
The date of delivery and duration of prescription were then used to calculate the number of treated days during each month for each individual. In the Netherlands, all statins are available only by prescription.

_Dementia measurement_

Participants were screened for dementia at baseline and subsequent center visits with the Mini-Mental State Examination (MMSE) and the Geriatric Mental Schedule organic level[@debruijn2015]. Those with an MMSE score <26 or Geriatric Mental Schedule score >0 underwent further investigation and informant interview, including the Cambridge Examination for Mental Disorders of the Elderly. All participants also underwent routine cognitive assessment at each center visit. In addition, the entire cohort was continuously under surveillance for clinically-diagnosed dementia through electronic linkage of the study database with medical records from general practitioners and the regional institute for outpatient mental health care. Available information on clinical neuroimaging was used when required for diagnosis of dementia subtype. A consensus panel led  by a consultant neurologist established the final diagnosis and subtype of dementia according to standard criteria for dementia (DSM-III-R), Alzheimer's disease (NINCDS–ADRDA), and vascular dementia (NINDS-AIREN).

### The protocol of the target trial

We begin by describing the protocol of our target trial to estimate the effect of statins on incident dementia; subsequently, we describe how we emulate this target trial in our data. A summary of these protocol components can be found in Table 1.

_Eligibility criteria_

The target trial includes participants aged 55-80 years with no statin prescription in the previous two years and no previous diagnosis of dementia. Individuals receive a cholesterol test and MMSE examination at enrollment, and are excluded if they have an MMSE score <26. Individuals are enrolled in the target trial starting in January 1993.

_Treatment strategies_

Two treatment strategies are considered: (1) initiate statin therapy at baseline and remain on statins during the follow-up; or (2) refrain from taking statin therapy during the follow-up. Both strategies allow for deviation if a serious illness occurred, e.g., cancer or heart disease.

_Randomized assignment_

Eligible individuals are randomized to one of the two treatment strategies without blinding.

_Outcomes_

The primary outcomes of interest include incident dementia and a composite outcome of incident dementia or all-cause mortality. Mortality is ascertained through linkage with records of general practitioners and municipality records. Incident dementia is ascertained by combining continuous surveillance through electronic linkage with medical records and MMSE and Geriatric Mental Schedule assessments, using the algorithm described above.

_Follow-up period_

Individuals are followed from baseline (randomization) until diagnosis of dementia, mortality, loss to follow-up (defined by not attending regular study visits, e.g., 2 years without a study visit), or January 1st, 2015, whichever occurs earliest.

_Causal contrasts of interest_

To compare the two treatment strategies, we estimate a modified intention-to-treat effect as well as the per-protocol effect. In the target trial, the modified intention-to-treat effect is the effect of statin initiation versus no statin initiation (the intention-to-treat effect would be the effect of assignment to one of these strategies). The per-protocol effect is the effect of statin initiation and
sustained statin use versus no statin initiation and never initiating statin medications.

_Analysis plan_

Modified intention-to-treat effect: For each outcome, we fit the pooled logistic regression model: $logitPr(D_{t+1} = 1|D_t = 0, A) = 	\theta_{0t} + \theta_{1}A + \theta_{2}A * h(t)$ where $D_t$ is an indicator for developing the outcome during time $t$ (1: yes, 0: no), $A$ is an indicator for treatment initiation (1: statins; 0:no statins), $\theta_{0t}$ is a time-varying intercept and $h(t)$ for follow-up time, modeled as restricted cubic splines. The model's predicted values are then used to estimate 10-year dementia-free and 10-year dementia-free survival curves, and 5- and 10-year risks of dementia and the combined endpoint of dementia and death.

_Per protocol effect:_ Individuals are artifically censored when they deviate from their assigned treatment strategy. Specifically, individuals assigned to initiation and sustained statin use are censored after one calendar month with no treated days, and individuals assigned to refrain from statins are censored after one calendar month with one or more treated days. Individuals can no longer be artificially censored after a diagnosis of heart disease or cancer. 

For each outcome we fit a weighted pooled logistic regression model: $logitPr(D_{t+1} = 1|D_t = 0, C_t = 0, A, V) = 	\theta_{0t} + \theta_{1}A + \theta_{2}A * h(t) + \theta_{3}'V$ where $C_t$ is an indicator for artificial censoring at time $t$ (1: yes, 0: no) and $V$ is a vector of covariates measured at baseline. To adjust for time-varying selection bias induced by the artificial censoring, we weight each individual at each time $t$ by the inverse probability of receiving their own time-varying history [34, 35]: i.e., the weight $$W_{t} = \prod_{k=0}^{t} \frac{1}{f(A_{k}│\bar{A}_{k-1}, \bar{D}_{k} = 0, \bar{L}_{k-1})}$$ where $f(A_{k}|\bar{A}_{k-1},\bar{D}_{k} = 0, \bar{L}_{k-1})$ is the conditional probability mass function $f(A_{k}|\bar{A}_{k-1},\bar{D}_{k} = 0, \bar{L}_{k-1})(a_{k-1}|\bar{a}_{k-1}, d_k = 0, \bar{l}_{k-1})$ with $(a_{k-1}|\bar{a}_{k-1}, a_k = 0, \bar{l}_{k-1})$ evaluated at the random argument $(A_{k}|\bar{A}_{k-1},\bar{D}_{k} = 0, \bar{L}_{k-1})$. We use overbars. We use overbars to denote an individual's covariate or treatment history. For an individual who is uncensored through time $t$, note that the contribution to the denominator of the weight is equal to the probability that the individual remains uncensored through time $t$ conditional on not developing the outcome by time $t$, covariate history, and treatment history [36]. An individual’s weight at each time is therefore the cumulative product of the conditional probability of remaining uncensored. The weights are estimated by fitting a pooled logistic model including a time-specific intercept, the baseline covariates and the most recent measurement of several time-varying covariates.

Baseline covariates included variables measured at the clinic and home visits: sex, highest educational attainment, calendar year, age, APOE-ε4 carrier status, body mass index (BMI), most recent MMSE, most recent total cholesterol measurement, most recent systolic blood pressure measurement, and current smoking status; variables measured using clinical diagnoses: history of stroke, history of heart disease, and history of cancer; variables measured using continuous pharmacy dispensing records: antihypertensives, diuretics, beta-blockers, calcium blockers, renin angiotensin aldosterone system (RAAS) inhibitors, non-statin cholesterol-lowering medications, NSAIDs, psychotropic medications (antidepressants, antipsychotics, and benzodiazepines), and aspirin (yes, no); and variables measured using a combination of pharmacy records and clinical diagnoses: history of diabetes. Time-varying covariates that could be common causes of statin initiation (or discontinuation) and incident dementia included MMSE score, months since most recent MMSE, total cholesterol, months since the most recent cholesterol measurement, systolic blood pressure, current smoking status, history of stroke, heart disease, cancer, and diabetes, and use of other prescription medications. All continuous variables were modeled linearly. The contributions to the weights are set to 1 after diagnosis of heart disease or cancer. Weights are truncated at the 99th percentile[37] (~7.8, Appendix Table 3, available from Dryad doi:10.5061/dryad.kprr4xh19) .

_Subgroup analyses_

We explore effect modification by calendar year, cohort, and age in subgroup analyses restricted to: (1) calendar years in 2000 or later; (2) the initial cohort only; (3) individuals younger than 70 years of age at baseline; and (4) individuals 70 years of age or older at baseline.

_Competing events_

In our setting, death is a competing event for dementia because an individual cannot get dementia once they have died. The definition and interpretation of the causal estimand for an effect of statins on dementia is tied to the analytic choice to define the competing event death as a censoring event (i.e. an event that prevents observation of the counterfactual outcome of interest) or not[38]. In our dementia analyses, we consider the competing event death to be a censoring event. That is, our modified intention-to-treat and per-protocol estimates are interpreted as the effect of statin initiation and sustained statin use on incident dementia in a hypothetical population in which death does not occur or in which death is independent of risk factors for dementia (conditional on measured covariates). This estimate can also be interpreted as the controlled direct effect of statins on dementia not mediated by the competing event death [39]. To adjust for potential bias due to competing events in the per-protocol analysis, we compute inverse probability weights for death in a sensitivity analysis. Each individual receives a timevarying weight inversely proportional to the probability of not dying. To compute the weights, we fit a pooled logistic model including a time-specific intercept, the baseline covariates and time-varying covariates listed previously, and an indicator for the treatment arm. The product of the estimated conditional probabilities at each time is then used to estimate the time-varying weight for each person at each time. Another approach for dealing with competing risks is to consider a composite outcome of dementia or death. Although this approach addresses some issues with the interpretation and valid estimation of our primary approach, it remains difficult to interpret because a non-null estimate can occur due to an effect of statins on dementia alone, death alone, or a combination thereof.

_Loss to follow-up_

To adjust for potential selection bias due to non-differential loss to follow-up between the treatment arms, we compute inverse probability of censoring weights in a sensitivity analysis. Each individual receives a time-varying weight inversely proportional to the probability of not being loss to follow-up.

### Emulation of the target trial using observational data

We emulated the target trial by using Rotterdam Study data from the initial and first extended cohort. We will first describe emulating a target trial with baseline in January 1993, and then describe how we can emulate a series of target trials with baseline months ranging from January 1993 to December 2007.

_Eligibility criteria_

We identified individuals aged 55-80 years with no statin prescription (operationalized as at least 2 years enrolled in the Rotterdam Study with no recorded statin prescription) and no previous diagnosis of dementia. Individuals were excluded if they did not have a recent cholesterol measurement (within the previous 3 years) if they did not have a recent MMSE score ≥26 (within the previous 3 years), or if they did not have any BMI or SBP measurement.

_Treatment strategies_

Eligible individuals were classified as statin initiators if they initiated statins in January 1993 and as non-initiators if they did not initiate statins in January 1993.

_Randomized assignment_

To emulate the randomization component of the target trial, we adjusted for the baseline variables listed in our analysis (see below).

_Follow-up and Outcome_

Same as in the target trial, except we define loss to follow-up as ten years without an MMSE measurement (due to infrequent scheduled visits in the later years of the Rotterdam Study).

_Causal contrasts_

Same as in the target trial.

_Analysis plan_

The modified intention-to-treat analysis was the same as in the target trial except that we included the previously described baseline covariates in the pooled logistic regression model. Because individuals in the observational study did not necessarily have MMSE and cholesterol measurements taken exactly at baseline, we also included time since most recent MMSE measurement and time since most recent cholesterol measurement as baseline covariates. The per-protocol analysis was the same as in the target trial (individuals are artificially censored when they deviate from their assigned treatment strategy) except that we included the two additional baseline covariates time since most recent MMSE measurement and time since most recent cholesterol measurement as baseline covariates.

_Sensitivity analyses and subgroup analyses_

We performed the same sensitivity and subgroup analyses as in the target trial. Further, we conducted several additional sensitivity analyses. To evaluate residual confounding by indication, we excluded individuals who: (1) had a history of heart disease or history of stroke at baseline; (2) were taking vascular medications at baseline (non-statin cholesterol-lowering medications, diuretics, beta-blockers, calcium-blockers, RAAS inhibitors, NSAIDs, or aspirin); (3) had high cholesterol (>6.2 mmol/L) at baseline; and (4) did not have high cholesterol at baseline. To evaluate whether our results were sensitive to overly strict inclusion criteria that could decrease our sample size, we required a 6-month statin washout period at baseline (rather than two-year) and required an MMSE ≥26 at baseline but did not require it to be in the previous 3 years.

_Creating a sequence of target trials using observational data_

Enrollment in the target trial begins in January 1993 and continues until the desired sample size has been attained. In the emulation of the target trial described above, the eligibility criteria are applied once, in January 1993. However, if only a small number of eligible individuals initiate statin therapy in January 1993, a meaningful comparison of statin initiators and non-initiators will not be possible. To increase the sample size in our trial emulation, we apply the same eligibility criteria anew in February 1993 and each month thereafter until December 2007. That is, we emulate a series of 180 ‘trials’, each of them with a 1-month enrollment period[30]. For example, individuals eligible to enroll in the January 1993 ‘trial’ who do not initiate statins that month may be eligible to enroll in the February 1993 ‘trial’, assuming they continue to meet the other eligibility criteria that month.

In the analysis, baseline variables are updated at the start of each ‘trial’. For example, the baseline variables for the February 1993 ‘trial’ are the most recent measurements of the covariates at that time. We pooled data from all 180 ‘trials’ into a single model and include ‘month at the trial’s baseline’ (taking values from 1 to 180) and month of follow-up in each ‘trial’ in our models (both modeled using restricted cubic splines).

All analysis where performed in SAS using publicly available macros (https://www.hsph.harvard.edu/causal/software/). 95% confidence intervals were obtained using bootstrapping with 200 samples.

_Data Availability_

Data can be obtained on request. Requests should be directed toward the management team of the Rotterdam Study (secretariat.epi@erasmusmc.nl), which has a protocol for approving data requests. Because of restrictions based on privacy regulations and informed consent of the participants, data cannot be made freely available in a public repository.

/newpage


```
## -- Attaching packages --------------------------------------- tidyverse 1.3.0 --
```

```
## v ggplot2 3.3.3     v purrr   0.3.4
## v tibble  3.1.0     v dplyr   1.0.5
## v tidyr   1.1.3     v stringr 1.4.0
## v readr   1.4.0     v forcats 0.5.1
```

```
## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
## x dplyr::filter()     masks stats::filter()
## x dplyr::group_rows() masks kableExtra::group_rows()
## x dplyr::lag()        masks stats::lag()
```

```
## 
## Attaching package: 'huxtable'
```

```
## The following object is masked from 'package:dplyr':
## 
##     add_rownames
```

```
## The following object is masked from 'package:ggplot2':
## 
##     theme_grey
```

```
## The following object is masked from 'package:kableExtra':
## 
##     add_footnote
```

<table class="table" style="font-size: 6.5px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Section </th>
   <th style="text-align:left;"> Target trial protocol </th>
   <th style="text-align:left;"> Emulation using observational data </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Eligibility criteria </td>
   <td style="text-align:left;"> Age 55 - 80 years at enrollment, no statin prescription in the previous 2 years, known to be dementia free, MMSE &gt;=26 at enrollmen; cholesterol, BMI and SBP measurement at enrollment </td>
   <td style="text-align:left;"> Same, except MMSE which is measured within the previous 3 years </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Treatment strategies </td>
   <td style="text-align:left;"> 1. Initiate statin therapy at baseline and remain on it during the follow-up unless serious illnes occurs &lt;br&gt;
     2. Refrain from taking statin therapy during the follow-up unless serious illness occurs </td>
   <td style="text-align:left;"> Same </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Randomized assignment </td>
   <td style="text-align:left;"> Random assignment to either strategy at baseline </td>
   <td style="text-align:left;"> Random assignment at baseline within levels of sex, educational attainment, age, calendar year, smoking status, MMSE, BMI, APOE4 status, cholesterol, SBP, stroke, diabetes, cancer, heart disease, other medication </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Start/End of follow-up </td>
   <td style="text-align:left;"> From baseline until dementia dx, death, or loss to follow-up (10 years without an MMSE measurement), or January 1st, 2015, which ever happened first </td>
   <td style="text-align:left;"> Same </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Outcome </td>
   <td style="text-align:left;"> Dementia (Death as a censoring event),
     Composite outcome: dementia or death </td>
   <td style="text-align:left;"> Same </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Causal contrast </td>
   <td style="text-align:left;"> Modified intention-to-treat. 
    Per-protocol effect </td>
   <td style="text-align:left;"> Same </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Analysis plan </td>
   <td style="text-align:left;"> Modified intention-to-treat analysis
    Per-protocol analysis </td>
   <td style="text-align:left;"> Same modified intention-to-treat analysis, except that estimates are adjusted for baseline variables </td>
  </tr>
</tbody>
</table>

## Results

180 trials were conducted from January 1993 to December 2007. Of 1,578,655 potential persontrials (10,942 individuals), 233,526 person-trials (6,373 individuals) met the eligibility criteria. There were 622 initiators and 232,904 non-initiators (Figure 1). Across the 180 months of trials, the mean number of participants in a given month was 1,297 with a mean number of 3.5 initiators. The trial beginning in March 2006 had the most initiators (15 initiators, 1,915 noninitiators) (Appendix Table 1, available from Dryad doi:10.5061/dryad.kprr4xh19). Initiators and non-initiators were similar in age, MMSE, educational attainment. Compared with non-initiators, initiators had higher baseline total cholesterol measurements and systolic blood pressure measurements and were more likely to be current or former smokers, have a history of heart disease, stroke, and diabetes, and use other prescription medications (Table 2). 

Of the 622 initiators, 63 developed dementia and 225 died or developed dementia over the follow-up. Of the 232,904 non-initiators, 23,885 developed dementia and 82,896 died or developed dementia over the follow-up. The median (IQR) follow-up time was 9.3 (7.8, 11.9) years for initiators and 9.9 (7.8, 13.5) years for non-initiators in the dementia analysis. The median (IQR) time to dementia was 7.5 (5.4, 11.4) years for initiators and 8.3 (4.9, 11.4) years for non-initiators.

Figure 2 shows the modified intention-to-treat 10-year dementia-free and dementia-free survival curves by statin initiation. Comparing statin initiation with no initiation, the 10-year risk differences (95% CI) were -0.1% (-2.3%, 1.8%) for dementia and 0.3% (-2.7%, 3.3%) for dementia or death (Table 3). Unadjusted estimates were similar for dementia but larger for dementia or death (data not shown).

After one-year of follow-up, 459 of the initiators remained on statin therapy. This number was 385, 274, and 100 after 2 years, 5 years, and 10 years, respectively. Compared with individuals who did not stop statin use over follow-up, individuals who stopped statin use over follow-up were more likely to be female, have lower baseline MMSE scores, and be smokers and were less likely to be on other prescription medications. In the per-protocol analysis, 27 of the 622 initiators developed dementia and 122 died or developed dementia over the follow-up. Of the 232,904 non-initiators, 20,379 developed dementia and 72,207 died or developed dementia over the follow-up. The median (IQR) time of follow-up was 3.8 (0.9, 8.7) years for initiators and 9.0 (5.9, 12.2) years for non-initiators. Figure 3 shows the per-protocol 10-year dementia-free and dementia-free survival curves by statin initiation. Comparing sustained statin use with no use, the 10-year risk difference (95% CI) was -2.2% (-5.2%, 1.6%) for dementia and -5.1% (-10.5%, -1.1%) for dementia or death (Table 3).

Inverse-probability weighting to adjust for censoring due to infrequent follow-up or censoring due to death did not materially change estimates. The 10-year per-protocol risk difference estimates for dementia or death were attenuated when excluding individuals age 70 years or older (-1.5%, 95% CI: -7.4%, 3.5%) and when excluding individuals with high cholesterol at baseline (-1.3%, 95% CI: -7.2%, 6.3%), but were larger when excluding individuals with a history of heart disease or stroke at baseline (-7.1%, 95% CI: -12.9%, -0.1%). The 10-year per-protocol risk difference estimates for dementia where also attenuated when excluding individuals age 70 years or older and larger when excluding individuals with a history of heart disease or stroke at baseline (data not shown). None of the other subgroup and sensitivity analyses yielded appreciably different results (Appendix Table 2, available from Dryad doi:10.5061/dryad.kprr4xh19).

## Discussion

Our study is the first to explicitly emulate a hypothetical randomized trial of statin use in older adults and incident dementia. We leveraged the rich data of the Rotterdam Study while mitigating some common limitations often associated with observational studies. While the protective effect of statin use on cardiovascular disease prevention is well established, we found little evidence for a difference in the risk of dementia or dementia or death after initiating statins compared with not initiating statins in an analysis that was agnostic about statin discontinuation (the modified intention-to-treat analysis analogue). This finding was consistent with two previous randomized trials that found no difference in cognitive decline or dementia in intention-to-treat analyses[5, 6]. Our findings suggest a potential decreased risk of dementia and dementia or death after sustained statin use compared with no statin use (the per-protocol analysis analogue), but residual confounding could not be ruled out and our confidence intervals were wide. The attenuation of the 10-year per-protocol risk-difference estimates when excluding individuals age 70 years or older suggests statins likely have less absolute benefit (within 10 years) when initiated during mid-life. In addition, the attenuation of the 10-year per-protocol estimate for the combined endpoint of dementia or death when excluding individuals with high baseline total cholesterol (and variability of the per-protocol 10-year dementia or death risk difference in general) suggests our analyses may not have successfully adjusted for confounding by cardiovascular disease risk. Finally, since statin use may delay death due to cardiovascular disease, estimates of the effect of statin initiation and statin use on dementia could be biased due to the competing event death.

A causal interpretation of all of our estimates relies on the untestable assumption that the measured baseline covariates were sufficient to adjust for confounding (i.e., to emulate randomization). Confounding by indication might partly explain our estimates, given that individuals who initiated statins were more likely to have other risk factors for dementia, including high blood pressure and APOE-ε4 carrier status. We were nevertheless able to adjust for several vascular risk factors (e.g., total cholesterol and systolic blood pressure and history of heart disease, stroke, and diabetes) in addition to demographic factors (e.g., smoking) and prescription medication use that could be key confounding variables in estimating effects of statin use on dementia. Unmeasured confounding by a prodromal dementia stage (which may affect likelihood of initiating or maintaining medication use) could remain despite adjustment for a recent MMSE score. In addition, data on LDL-cholesterol was not available, a strong indication for statin initiation and strongly associated with death due to cardiovascular disease (but perhaps not with dementia). In general, confounding by indication is a more substantial issue when evaluating primary outcomes for the treatment indication (in this case, cardiovascular disease) compared with secondary outcomes (in this case, dementia)[40].

In addition to unmeasured or residual confounding, all of our estimates could also be biased if there are diagnostic delays for dementia that are differential with respect to statin use. For example, perhaps individuals taking statins are more likely to visit the doctor and receive a dementia diagnosis more quickly after onset of symptoms compared with someone not taking statins who does not visit a doctor as frequently. This differential outcome diagnosis would yield an underestimate of a protective effect of statins on dementia. While adjudication of dementia diagnoses in our study is based on continuous linkage to medical records in addition to information systematically gathered during the study, diagnostic delays will still occur for individuals who stop attending study visits and do not regularly see a doctor. We are interested in the effects of statins on dementia; however, estimates of the effects of statins on dementia diagnoses are not susceptible to this bias.

Protocols typically allow treatment discontinuation due to clinical reasons such as
contraindications, serious diagnoses, side-effects or toxicity. Accordingly, a per-protocol analysis should estimate an effect of adhering to a protocol that allows treatment discontinuations for appropriate reasons. Estimating an appropriate per-protocol effect analogue is challenging when, as in our study, data on reasons for discontinuation is not available. We dealt with this challenge by allowing individuals to discontinue (or initiate) statins after diagnosis of cancer or heart disease, but this is likely an insufficient attempt to allow clinically supported deviations.

A causal interpretation of the per-protocol effect analogues’ estimates further relies on the additional assumption that the measured time-varying covariates were sufficient to adjust for time-varying confounding. This assumption would not be met if there were reasons for discontinuing (or initiating) statins over time related to dementia risk for which we did not adequately measure or adjust. Individuals who discontinued statins had lower baseline MMSE scores, further suggesting the possibility of residual confounding by sub-clinical dementia. In addition, since linkage with pharmacy dispending records is lost when individuals enter nursing homes in the Rotterdam Study, these individuals will be censored from the sustained statin use strategy even though they may not have discontinued statins. Since these individuals may be sicker, this could lead to an overestimation of the beneficial effect of sustained statin use.

Finally, since many of the measured time-varying covariates in our analysis could only be
updated when a Rotterdam Study visit occurred, we may not have been able to sufficiently adjust for time-varying confounding by measured covariates. Instrumental variable approaches – that do not rely on measuring exposure-outcome confounders but instead make different strong assumptions[41] – may offer a complementary way to estimate per-protocol effect analogues in some studies, but these methods are not well suited for estimating sustained treatment strategies.[41, 42]

Altogether, our findings suggest a potential decreased 10-year risk of dementia and dementia or death after sustained statin use compared with no statin use in older adults. However, this decreased risk relied heavily on data from few individuals (resulting in wide confidence intervals), and certain plausible biases (such as residual confounding by cardiovascular disease risk) cannot be ruled out. Our study may be useful to inform the design and analyses of future observational studies and randomized clinical trials to estimate the effect of sustained statin use on dementia.

_Acknowledgements_

We thank Miguel Hernán for helpful comments on an earlier version of this manuscript. 

This study was partly funded by ZonMW Memorabel (projectnr 73305095005) and Alzheimer Nederland through the Netherlands Consortium of Dementia Cohorts (NCDC) in the context of Deltaplan Dementie. Further funding was obtained from the Netherlands CardioVascular Research Initiative: the Dutch Heart Foundation (CVON 2018-28 Heart Brain Connection Cross-roads), Dutch Federation of University Medical Centres , the Netherlands Organisation for Health Research and Development and the Royal Netherlands Academy of Sciences.
