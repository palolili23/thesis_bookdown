# Towards a clearer causal question underlying the association between cancer and dementia {#chapter4}

\chaptermark{Pin 1 and risk of dementia}

\newpage

## Abstract

**Background:** Several observational studies have described an inverse association between cancer diagnosis and dementia. Several biological mechanisms and sources of bias have been proposed. Since bias cannot be assessed without a clear causal question, we propose to study the controlled direct effect of the protein Pin1 on the risk of dementia. With this case-study, we will outline the needed assumptions and potential sources of bias and exemplify how these translate into the analytic decisions under the guidance of causal directed acyclic graphs

**Methods:** We used data from the Rotterdam Study, a population-based cohort. We estimate the association between cancer diagnosis (as proxy for Pin1) and dementia diagnosis using two different proxy methods and with confounding and censoring for death addressed with inverse probability weights. We estimate and compare the complements of a weighted Kaplan-Meier survival estimator at 20-years of follow-up.

**Results:** Out of 3634 participants, 899 (25%) were diagnosed with cancer, of whom 53 (6%) had dementia, and 567 (63%) died. Among those without cancer, 15% (411) were diagnosed with dementia, and 667 (24%) died over follow-up. Depending on the confounding and selection bias control, and the way in which cancer was used as a time-varying proxy, the risk ratio ranged from 0.70 (95%CI: 0.49, 0.93) to 1.05 (0.79, 1.29).

**Conclusion:** Being explicit about the underlying mechanism of interest and defining a clear causal contrast is key to maximize what we can learn about this association given available or readily-collected data, and to defining, detecting, and preventing potential biases.


\newpage

## Towards a clearer causal question underlying the association between cancer and dementia


Many observational studies have consistently found that individuals with cancer have a lower risk of developing dementia when compared to individuals with no history of cancer [@ma2014;@hanson2016;@vanderwillik2018;@ospina2020]. These findings have motivated substantial research toward mechanistic explanations, including molecular and genetic pathways that may explain this association[@behrens2009;@harris2014;@nudelman2019;@Papin2020;@driverbiogeront2014;@olson2019;@li2021;@driverpin2015]. These research questions have led to discussions of repurposing or augmenting current cancer treatments, including chemotherapy, for dementia[@snyder2017].

Nevertheless, inferring any treatment or mechanistic effects from the observed cancer-dementia inverse association is not straightforward. Researchers have raised concerns related to the competing event of death, unmeasured confounding, and ascertainment error that could explain these results[@driverbiogeront2014;@ganguli2015]. However, understanding these or other sources of bias first requires making explicit a causal question. Moreover, enumerating an explicit causal question is one step toward tying a research study to a question that is relevant to decision-making[@didelez2016;@labrecque2017].

To illustrate the complexities of inferring hypothetical or available cancer treatments’ effects on dementia from the observed cancer-dementia association, we focus on a specific question conceptualizing the Pin1 enzyme as the target of intervention. Previous animal studies have shown that Pin1 enzyme over-expression promotes tumorigenesis, while its down-regulation is attributed to mechanisms that contribute to neurodegeneration and amyloid deposition[@driverpin2015;@angelucci2017;@li2021]. If we – hypothetically speaking –  one day could develop a drug that increases Pin1 expression specifically in brain tissue in hopes of preventing dementia, we could pose the question as: _What is the effect of this Pin1-targeting drug on the risk of dementia over time compared to standard treatments?_

To explore how we might learn about this effect using real-world data on cancer and dementia, we progressively build a causal directed acyclic graph (DAG) to connect this question to the observable data and the assumptions we rely on to study the effect. We exemplify these challenges and how they translate into the analytic decisions using data collected from the Rotterdam Study, a population-based cohort study. In our discussion, we describe how other investigators may expand this exercise for other possible causal questions, including repurposing existing chemotherapy regimens or identifying other novel drug targets.

## Methods

### Overview of the causal structure

If this hypothetical Pin1-targeting drug was developed, the best way to understand its effect on dementia risk would be to have a well-conducted randomized trial in which we randomize eligible participants in late midlife (e.g., ages 50-60 years) to receive this drug or not, and closely monitor dementia diagnosis over a lengthy follow-up. Since this drug is not currently available, at best we can use observational data on Pin1 expression measurements. For example, suppose that a biomarker test was available to measure Pin1 and we measured this biomarker in stored baseline blood samples from late-midlife participants recruited for a population based-cohort.

In the observational setting, confounding could explain the observed association between Pin1 and dementia. In the causal diagram[@whatif2020] in Figure 1, we present Pin1 expression as $P_{t}$ and dementia diagnosis by time $t+k$ as $Y_{t+k}$. Both may share causes $L_1$, and to assess the causal relationship between $P_{t}$ and $Y_{t+k}$ we would thus adjust for $L_1$. Previous dementia studies have described age, sex, educational level and race/ethnicity as a minimal adjusting set of covariates[@ospina2020]. However, environmental and behavioral factors such as smoking may translate into Pin1 over-expression[@tan2010] and are also related to the development of dementia[@dementia_lancet] and should therefore be adjusted for. Although $L_1$ can be time-varying in nature, we only depict $L_1$ at one time-point for readability.

![(\#fig:unnamed-chunk-1)Figure 1.](04-cancer_files/figure-latex/unnamed-chunk-1-1.pdf) 
**Figure 1. Causal directed acyclic graph highlighting confounding of the potential effect of Pin1 on risk of dementia.** Pin1 at time $t$ is represented as $P_t$; dementia at time $t+k$ is represented as $Y_{t+k}$; $L_1$ represents shared causes of Pin1 and dementia, such as smoking. To isolate the effect of $P_t$ on $Y_{t+k}$ we need to block the backdoor path $Y_{t+k} \leftarrow L_1 \rightarrow P_t$. Gray nodes and arrows are described progressively in Figures 1-5.


Currently, Pin1 expression is not an available biomarker for population-based research, so at best we can only rely on a proxy for it. Because Pin1 over-expression is present in tumors, and tumors are only diagnosed through biopsies, previous studies have speculated that Pin1 over-expression partly explains the inverse association between cancer diagnosis and dementia, though Pin1 was not explicitly part of the research question[@driver2012;@musicco2013;@freedman2016;@bowles2017;@frain2017;@schmidt2017;@sun2020;@ording2020]. Unlike measuring Pin1 at the same time for all participants (though this would not necessarily mean this would be the ideal time to measure it, we discuss this point further in the discussion section), cancer diagnosis is collected during follow-up. We depict this feature in Figure 2, where $C_t$ and $C_{t+1}$ represent _cancer diagnosis_ over time, the measured proxy of $P_{t}$ and $P_{t+1}$ respectively. Although this means we would measure the association between cancer diagnosis over time and dementia in the observed data, we are assuming that the captured effect is only through the pathway that involves Pin1 expression over time. That is, we only have measurements of $C_{t+1}$ and $Y_{t+k}$ and some subset of $L_1$, but our question remains focused on the effect of $P_t$. 

We note that this means we already are changing our question from one of estimating the effect of Pin1 to one that is testing the sharp causal null hypothesis that Pin1 has no effect on dementia in any individuals. That is, an association between cancer and dementia is at best evidence against a null effect, and it would take substantial and unknown assumptions about the relationship between Pin1 and cancer diagnosis to describe how the magnitude of a cancer-dementia association is related to the likely magnitude of a Pin1-dementia effect.

![(\#fig:unnamed-chunk-2)Figure 2.](04-cancer_files/figure-latex/unnamed-chunk-2-1.pdf) 

**Figure 2.  Causal directed acyclic graph highlighting the use of incident cancer diagnosis as a proxy for Pin1 expression.** Pin1 at time $t$ and $t+1$ are represented as $P_t$ and $P_{t+1}$, respectively; dementia at time $t+k$ is represented as $Y_{t+k}$; $L_1$ represents shared causes of Pin1 and dementia; incident cancer diagnosis at time $t$ and $t+1$ are represented as $C_t$ and $C_{t+1}$. To isolate the effect of $P_t$ and $P_{t+1}$ on $Y_{t+k}$ we need to block the backdoor path $Y_{t+k} \leftarrow L_1 \rightarrow P_t$ and $Y_{t+k} \leftarrow L_1 \rightarrow P_{t+1}$. Although we represent $L_1$ as a single node for readability, $L_1$ is time-varying too. Gray nodes and arrows are described progressively in Figures 1-5.

Another challenge that arises when choosing cancer diagnosis as the proxy for Pin1 is defining the time zero, i.e. the time when eligibility criteria are met, “treatment” is assigned, and screening for dementia would begin[@hernan2016].Emulating the eligibility criteria to participate in a trial for Pin1-targeting drugs will not necessarily be possible in a cohort setting recruiting participants for discordant reasons. Moreover, the latter may not align with the moment at which cancer diagnosis is measured since it happens continuously over follow-up and this situation may introduce immortal-time bias[@hernan2016]. For example, a study performed using data from the Framingham Heart Study[@driver2012] defined the exposed group with cancer as those participants with prevalent or incident cancer diagnosis (alternatively defined as "ever cancer"[@hanson2016]). This meant that a participant who had cancer diagnosis over follow-up contributed all their person-time to the cancer arm, including the time prior to the cancer diagnosis. By defining the exposure after the time of inclusion to the cohort, only participants who remain alive and free of dementia diagnosis over follow-up can be defined as "ever cancer"[@anderson1983, @hernan2016].

This problem is partly mitigated by recognizing the time-varying nature of cancer diagnosis. Some studies have considered cancer diagnosis as a time-dependent exposure[@white2013; @hanson2016; @bowles2017]. The price we pay for this approximation is that implicitly, this means that Pin1 would over-express at the time of cancer diagnosis and not before, which is biologically implausible. The time between first biological changes that eventually can lead to cancer and cancer manifestation can range between five and forty years[@nadler2013]. Moreover, cancer diagnosis will only be measured in the subset of participants who are alive over follow-up. Thus, in Figure 3 we included death prior to cancer diagnosis as $D_{t+1}$ and an arrow between $D_{t+1}$ and $P_{t+1}$ that represents a deterministic association such as that $P_{t+1}$ is only observed if $D_{t+1}$ is zero. In addition, we added an arrow between $L_1$ and $D_{t+1}$, since covariates such as smoking may affect Pin1 over-expression but also affect the risk of death due to other causes such as from chronic obstructive pulmonary disease. 

![(\#fig:unnamed-chunk-3)Figure 3.](04-cancer_files/figure-latex/unnamed-chunk-3-1.pdf) 

**Figure 3. Causal directed acyclic graph highlighting the time-varying nature of cancer diagnosis and immortal time bias.**  Pin1 at time $t$ and $t+1$ are represented as $P_t$ and $P_{t+1}$, respectively; dementia at time $t+k$ is represented as $Y_{t+k}$; $L_1$ represents shared causes of Pin1 and dementia; incident cancer diagnosis at time $t$ and $t+1$ are represented as $C_t$ and $C_{t+1}$. $D_{t+1}$ represents death at time $t+1$, cancer diagnosis at $t+1$ can only be measured among those who are alive at $t+1$. Gray nodes and arrows are described progressively in Figures 1-5.

Another challenge to address is related to death as a competing event for dementia, represented in Figure 4. For interpretability we exclude the time-varying process of cancer diagnosis and focus on Pin1 (and cancer diagnosis) as it had been measured in all participants at time $t+1$. Given that some participants may die prior to dementia diagnosis, we can only measure dementia over follow-up in the individuals who survive long enough to have a dementia diagnosis. In the causal diagram of Figure 4 we include a node for death after the exposure $C_{t+1}$ has been measured, represented as $D_{t+k}$ and which acts as a competing event of $Y_{t+k}$ because if a participant dies by $t + k$, the participant cannot subsequently develop dementia. Furthermore, since $D_{t+k}$ and $Y_{t+k}$ are events related to aging and its consequences, $L_2$ represents the shared causes of both events such as cardiovascular conditions. We also include an arrow between $L_1$ and $D_{t+1}$ following the argument discussed previously.

![(\#fig:unnamed-chunk-4)Figure 4.](04-cancer_files/figure-latex/unnamed-chunk-4-1.pdf) 

**Figure 4. Causal directed acyclic graph highlighting death as a competing event of dementia** Pin1 at time $t$ and $t+1$ are represented as $P_t$ and $P_{t+1}$, respectively; dementia at time $t+k$ is represented as $Y_{t+k}$; $L_1$ represents shared causes of Pin1 and dementia; incident cancer diagnosis at time $t$ and $t+1$ are represented as $C_t$ and $C_{t+1}$; $D_{t+1}$ represents death at time $t+1$. In this graph we only focus attention to the exposure as if it was measured for all at time $P_{t+1}$. We include $D_{t+k}$ as death at time $t+k$ since $Y_{t+1}$ is only observable when participants are alive at $t+k$. $L_2$ represents possible shared causes of dementia and death (such as cardiovascular comorbidities). Pin1 may affect the risk of death through cancer diagnosis, represented as an arrow between $C_{t+1}$ and $D_{t+k}$. To isolate the direct effect of $P_{t+1}$ and $Y_{t+k}$, we have to block the backdoor pathway from $Y_{t+k} \leftarrow L_2 \rightarrow D_{t+k} \leftarrow C_{t+1} \leftarrow P_{t+1}$ and $Y_{t+k} \leftarrow D_{t+k} \leftarrow L_1 \rightarrow P_{t+1}$. Gray nodes and arrows are described progressively in Figures 1-5.

In the setting where $P_{t+1}$ represented the targeted-drug for Pin1, and if this drug had no systemic beneficial or harmful side-effects such as that there is no arrow between $P_{t+1}$ and $D_{t+k}$, a total effect would quantify the effect of $P_{t+1}$ on $Y_{t+k}$ that does not include any pathway mediated through $D_{t+k}$[@young2020]. However, in the context of cancer diagnosis as the proxy for Pin1 over-expression, we cannot rule out the effect of cancer diagnosis on death, represented as the arrow between $C_{t+1}$ and $D_{t+k}$. In this setting, a total effect of $P_{t+1}$ in $Y_{t+k}$ includes the indirect causal pathway mediated by the effect of cancer diagnosis on mortality, which may translate into an inverse association[@young2020]. 

To isolate the direct effect of $P_{t+1}$ in $Y_{t+k}$ through measurement of $C_{t+1}$ we have at least two alternatives of causal questions we can ask. One, we can imagine a causal question where we decompose the total effect of cancer by the different pathways that affect dementia and death separately[@stensrud2020]. Two, we can define a scenario where death could have been prevented. The latter is defined as the controlled direct effect, where death is considered as an independent censoring event by relying on the assumption that we have measured all shared causes $L_2$ to block the pathway $Y_{t+k} \leftarrow L_2 \rightarrow D_{t+k} \leftarrow C_{t+1} \leftarrow P_{t+1}$. Previous studies have defined death as a censoring event [@frain2017], although failed to explicitly define  the independent censoring assumption and did not consider its plausibility. Moreover, adjusting for time-fixed shared causes between dementia and death may be insufficient to block this pathway, and therefore time-varying measurements of $L_2$ should be considered.

To summarize, the complexity of the causal structure that describes the effect of Pin1 on dementia risk while proxying Pin1 with cancer diagnosis illustrates the potential sources of bias, as observed in Figure 5. Even so, this is a simplified version since we omitted additional arrows from $L_1$ to $C_t$ and $C_{t+2}$ for brevity, as well as other sources of measurement error and the time-varying nature of all nodes and feedback loops between them, which would further complicate interpretability[@whatif2020]. 

![(\#fig:unnamed-chunk-5)Figure 5.](04-cancer_files/figure-latex/unnamed-chunk-5-1.pdf) 

**Figure 5. Causal directed acyclic graph depicting multiple challenges to using the proxy of cancer diagnosis to study the effect of Pin1 on risk of dementia.** Pin1 at time $t$ and $t+1$ are represented as $P_t$ and $P_{t+1}$, respectively; dementia at time $t+k$ is represented as $Y_{t+k}$; $L_1$ represents shared causes of Pin1 and dementia; incident cancer diagnosis at time $t$ and $t+1$ are represented as $C_t$ and $C_{t+1}$; $D_{t+1}$ and $D_{t+k}$ represents death at time $t+1$ and $t+k$; $L_2$ represents possible shared causes of dementia and death. The distinct challenges were highlighted separately in Figures 1-4.

We now turn to an application where we show how these challenges translate into analytic decisions. We will show ways to mitigate or better understand bias to the best of the available data's abilities in an attempt to inform the possible effect of Pin1 on dementia risk.

### The Rotterdam Study

We use data collected in the Rotterdam Study, a population-based prospective cohort study among persons living in the Ommoord district in Rotterdam, the Netherlands. Recruitment and initial assessments were held between 1990 and 1993, a second wave of recruitment was held between 2000 and 2001. Participants from the first sub-cohort had follow-up visits between 1993-1995, 1997-1999, 2002-2005, and 2008-2010, while the second sub-cohort had follow-up visits between 2004 and 2005, and between 2011 and 2012[@ikram2020]. All participants had data on history of cancer and dementia and incident diagnosis, collected from medical records of general practitioners (including hospital discharge letters) and through linkage with national registries. Date and cause of death was collected via municipal population registries. These ascertainment methods imply that the Rotterdam Study has functionally no loss to follow-up with respect to dementia diagnosis and death

Eligibility criteria included: ages 60 to 70 years at study entry; no history of cancer diagnosis, no history of dementia diagnosis; and free of cognitive decline (defined by a Mini Mental Score <26). Out of 10998 persons who participated at study entry, 3634 were considered eligible. Time to cancer diagnosis, time to dementia diagnosis and death status was measured for all participants. All participants were followed from study entry until dementia diagnosis, death or 20 years after their individual baseline date, whichever occurred first. Given that participants from the second sub-cohort were followed for 15 years, we assume that they would have had a similar distribution of dementia risk and mortality as the first subcohort, between year 15 and 20 of follow-up.


### Statistical Methods

We illustrate the association between cancer and dementia diagnosis under two scenarios, the first of which replicates a common analytic strategy and the second which mitigates some (but not all) the biases described above. Scenario A replicates the setting that defines cancer proxy as _"cancer ever vs. never"_[@driver2012], meaning we compare dementia outcomes in individuals who ever develop cancer during follow-up to those who were not observed to develop cancer during follow-up. Scenario B defines cancer diagnosis as time-varying meaning that time prior to cancer diagnosis is allocated to the non-exposed arm, and the time after cancer diagnosis to the exposed arm. To address confounding, we fit inverse probability treatment weights, stabilized and truncated at the 99th percentile. In Scenario A, weights were defined as the inverse of the probability of cancer diagnosis conditional on baseline covariates such as age at study entry, sex, educational attainment, cohort, smoking status. In contrast, for Scenario B, weights were defined to represent the product of the inverse probability of being diagnosed with cancer over time, conditional on the time-varying covariate history prior to cancer diagnosis[@hernan2000]. Baseline covariates included age at study entry, sex, ApoE4 status, educational attainment and the time-varying covariates such as smoking status, systolic blood pressure, body mass index and prevalent and incident hypertension and diabetes. 

Inverse probability censoring weights for death were calculated, assuming independent censoring conditional on measured covariates. In Scenario A, weights represent the inverse of the probability of not dying conditional on cancer diagnosis (ever vs. never) and baseline covariates such as age, educational attainment, ApoE4, and baseline measurements of smoking status, hypertension status, systolic blood pressure, BMI, history of diabetes and cohort. For individuals who died, their censoring weight is zero[@whatif2020]. In Scenario B time-varying weights represent the product of the inverse probability of surviving in each year prior to _t_, conditional on the measured shared causes of death and dementia. For an individual who has died by time _t_, the year _t_ censoring weight is zero[@young2020]. Weights were fitted including the same covariates used to estimate weights for time-varying cancer diagnosis, though we additionally added time-varying cancer, stroke, and heart disease diagnosis as predictors for death. Further details on modeling specifications and weights assessment are presented in the **eAppendix**.

To estimate the controlled direct effect of Pin1 on the risk of dementia, we compared the complement of a weighted Kaplan-Meier survival estimator for participants who developed cancer versus those who did not, with time indexed in years. The weights are time-varying by follow-up year, defined as a product of the year-specific inverse probability of treatment weights and the inverse probability of censoring by death weights. Estimates of the controlled direct effect are presented as 20-year risk differences (RD) and risk ratios (RR). All 95% confidence intervals were calculated using percentile-based bootstrapping based on 500 bootstrap samples.

Estimates are presented as 20-year risk differences (RD) and risk ratios (RR). All 95% confidence intervals were calculated using percentile-based bootstrapping based on 500 bootstrap samples. For illustrative and comparative purposes, we also calculated hazard ratios (HR). Hazards, unlike risks, inherently condition on surviving both dementia and death, and as such a causal interpretation is problematic[@young2020]. 

Since the conditional independent censoring assumption is untestable, we compute Peterson upper and lower bounds[@peterson1976] to represent: (1) the extreme scenario of independence, that refers to a scenario were those who died would never develop dementia (lower bound) and (2) complete dependency, that refers to an scenario where those who died would have a dementia diagnosis prior to death (upper bound). The lower bound is calculated with the Aalen-Johansen estimator treating death as a competing event, and the upper bound is calculated with the Kaplan-Meier estimator for the combined outcome of dementia or death.

All analysis were performed using R. Code is provided in supplementary material and available in https://github.com/palolili23/2021_cancer_dementia.

## Results

Participants had a mean age of 64.5 years, and 54% (n=1979) were women (Table 1). Over follow-up, 25% (n=899) developed cancer, with a median age of cancer diagnosis at 73 (IQR:69-78). From the total sample, 13% (n=460) were diagnosed with dementia over follow-up with a median age of at 79 (IQR:75-83) years. Among participants with incident cancer, 6% (n=53) had dementia diagnosis, 63% (n=567) died over follow-up, and 31% (n=279) remained alive and dementia-free at 20 years since study entry. In contrast, among participants free of cancer diagnosis over follow-up, 15% (n=411) were diagnosed with dementia, 24% (n=667) died over follow-up, and 61% (n=1657) were alive and dementia-free at the end of follow-up. The proportion of participants in each possible status over follow-up and leading causes of death for both arms are presented as eFigure 1 and 2 in the eAppendix.


Results for all scenarios are presented in Table 2. Using Scenario A’s analytic design and without adjusting for confounding or selection bias due to conditioning on death, we observe a protective association with a risk ratio (RR, 95% Confidence interval) of 0.70 (0.49,0.93) and a hazard ratio [HR, (95% Confidence interval)] of 0.52 (0.39,0.69). Though adjusting for measured confounding only minimally changed the observed association, the association is closer to the null after including censoring weights for death [RR: 0.91 (0.65,1.19); HR: 0.72 (0.54,0.98)]. In contrast, using Scenario B’s analytic design, the fully adjusted model results in a RR of RR: 1.05 (0.79,1.29) and a HR of 1.09 (0.80,1.50), though confidence intervals cross the null. The cumulative incidence curves for dementia for participants free of cancer diagnosis and with incident cancer diagnosis, under Scenarios A and B, reflect that the difference between groups changes over time and flips direction when considering cancer as a time-varying proxy. Bounds (rather than point estimates) were wide and covered the null (Lower bound RR: 0.39; Upper bound RR: 2.08).

(ref:04_fig6) **Figure 6. Risk of dementia under elimination of death over 20 years of follow-up by cancer diagnosis status.** Panel A. represents the scenario where cancer was considered as “ever vs. never”. Panel B. represents the scenario where cancer was considered as a time-varying proxy.

\begin{figure}
\includegraphics[width=35.56in]{V:/HomeDir/040609(Paloma Rojas)/My Documents/01_Projects/thesis_bookdown/figs/04_fig6} \caption{(ref:04_fig6)}(\#fig:unnamed-chunk-6)
\end{figure}


## Discussion

Several observational studies have defined “cancer diagnosis” as an exposure, although this does not represent a target for potential intervention or a modifiable risk factor. Instead, this variable is commonly used to represent a mechanism of interest that could not be measured. In this study we describe a particular research question of investigating a potential therapeutic drug-target of Pin1 expression, and discuss using cancer diagnosis as a proxy. By explicitly including Pin1 as part of the research question we connect the unmeasured mechanism of interest to the observed data outlining the data generation process. This practice helps to identify and disentangle potential sources of bias and can guide analytic decisions. We showed how estimates can change substantially according to alternative, yet explicit, assumptions.


For instance, a key challenge of cancer diagnosis as a proxy for Pin1 is the incapacity of defining a clear time zero[@hernan2016]. In the setting where cancer diagnosis is defined as "ever vs. never", this definition introduces immortal time bias. All results pertaining to this definition had an inverse association between cancer diagnosis and dementia, while results that did not introduce this particular form of immortal-time bias had point estimates closer to the null. Although we attempt to prevent this bias with statistical methods, we can only fully prevent it by having a clear definition of time-zero. Importantly, this definition does not depend on the collected data nor in analytic decisions: it relies on a deeper discussion related to when would be the best moment to potentially intervene on this biomarker and to what purpose. Thus, we hope that these unsolved questions guide future discussions and data collection efforts.


On the other hand, death as a competing event is a challenge that has some straightforward strategies, beginning first and foremost by choosing the causal parameter (or estimand) of interest[@young2020, @rojas_medrxiv]. In this study we chose the controlled direct effect, which represents the effect of Pin1 (or cancer) in a setting where death due to cancer and other causes could have been prevented, yet without an explicit intervention, which makes it ambiguous. This is different than conceiving a drug-target that increases Pin1 expression only in brain tissue, with no side effects that could increase cancer risk (and thus, death due to cancer). As opposed to prior studies that implicitly address a direct effect, and that define censoring as ignorable[@frain2017], we show how point estimates change substantially when we include weights for death to relax the independent censoring assumption[@weuve2012, @vangeloven2014, @willems2018, @young2020] when the estimand of interest is the controlled direct effect. Bounds to assess extreme scenarios of dependence between death and dementia[@peterson1976] illustrate the wide range of possible point estimates that cross the null. This shows that even with the effort of adjusting for time-varying covariates, we may be far from meeting this assumption and thus better efforts to measure shared (time-varying) causes of dementia and death are needed. In addition, presenting the proportion of participants that died prior to dementia diagnosis in each arm, as well as the proportion of participants in each status over time, improves transparency and puts in evidence the limitations of the data to answer this question.


Pin1 is only one of the several mechanisms proposed by other investigators as an explanation for the inverse cancer-dementia relationship. Certainly, cancer diagnosis represents a complex and heterogeneous health condition that exceeds the representation of Pin1 expression. To understand how – if at all – the cancer-dementia association informs the potential effects of any other mechanism or treatment strategy, and its connection to collected data, we may require different causal representations. For example, if researchers used this association to inform the possible effects of different chemotherapeutics on cognitive decline among patients undergoing treatment for cancer, different challenges would arise for mapping the observed association to the hypothetical randomized trial underlying that new research question. Notably, that target trial, unlike the one considered here, would include cancer diagnosis as part of the eligibility, and thus researchers would need to instead grapple with how using data on persons without cancer is useful and useable[@huitfeldt2016].
Each question requires thinking about bias anew and each question brings its own set of challenges and opportunities. 


We underscore that our study is just one case study for how observed associations between two diseases or health states may be disentangled to more transparently unveil possible mechanisms (and sources of bias) behind them, and how to maximize what we can learn about the potential mechanisms given available or readily-collected data. We hope to stimulate researchers first have a discussion about the exact research question, rather than trying to replicate the cancer and dementia relation in their dataset. Such discussion is needed to obtain meaningful conclusions.


