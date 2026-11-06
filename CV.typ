// Compile: quarto typst compile CV.typ CV.pdf
#let accent = rgb("#1f4e79")
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))
#set text(font: "Libertinus Serif", size: 10pt)
#set par(justify: true, leading: 0.6em)
#set list(indent: 0.4em, body-indent: 0.5em, spacing: 0.5em)

#let section(title) = {
  v(0.7em)
  text(fill: accent, weight: "bold", size: 11.5pt, tracking: 0.05em, upper(title))
  v(-0.5em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0.2em)
}
#let entry(title, where, when, body) = {
  grid(columns: (1fr, auto), column-gutter: 1.2em,
    [*#title* \ #text(fill: luma(90), style: "italic")[#where]],
    align(right, text(fill: luma(90))[#when]))
  v(-0.3em)
  body
  v(0.4em)
}

#align(center)[
  #text(size: 22pt, weight: "bold", fill: accent)[Hidde van de Beek] \
  #v(0.2em)
  #text(size: 9.5pt)[hiddevdbeek\@icloud.com #h(0.8em)|#h(0.8em) +316 36499144 #h(0.8em)|#h(0.8em) #link("https://hiddevandebeek.github.io")[hiddevandebeek.github.io]]
]

#section("Profile")
PhD candidate in Pharmacometrics and Statistics with a background in methodology and statistics. I develop statistical methods and open-source software for population PK/PD modelling, with a focus on aggregate data modelling and exact derivatives for nonlinear mixed-effects models. Developer of `nlmixr2` and `ferx`, author of the R package `admixr2`.

#section("Work")
#entry("PhD Pharmacometrics and Statistics", "Leiden University, Leiden Academic Centre for Drug Research (LACDR)", "2024 – 2028")[
  - Developing statistical methods for the analysis of pharmacokinetic and pharmacodynamic data: aggregate data modelling, covariate model development, and exact standard errors for FOCE/FOCEI.
  - Developer of the open-source NLME tools `nlmixr2` and `ferx`.
]
#entry("Teaching Assistant", "Utrecht University and University Medical Centre Utrecht", "2021 – 2024")[
  Taught statistics courses from beginner to advanced level for Bachelor's programmes in the Faculty of Social Sciences, and later for the Bachelor's in Biomedical Sciences and the Master's in Epidemiology.
]

#section("Publications and software")
#entry("From exact gradients to exact standard errors: third-order sensitivity equations for the FOCE and FOCEI population likelihood", [van de Beek H, Beldjenna M, Fidler ML, Zwep LB, van Hasselt JGC \ bioRxiv preprint], "2026")[
  #link("https://www.biorxiv.org/content/10.64898/2026.07.09.737434v1")[doi:10.64898/2026.07.09.737434]. Closed-form observed information for FOCE/FOCEI, implemented in `nlmixr2`.
]
#entry("admixr2: aggregate data modelling in R (formerly admr)", [Journal of Pharmacokinetics and Pharmacodynamics], "2025")[
  #link("https://doi.org/10.1007/s10928-025-10011-w")[doi:10.1007/s10928-025-10011-w]. R package with a novel Iterative Reweighting Monte Carlo algorithm (3 to 100-fold speed-up). #link("https://github.com/LeidenPharmacology/admixr2")[GitHub], #link("https://cran.r-project.org/package=admixr2")[CRAN].
]
#entry("nlmixr2 and ferx", "Open-source software", "ongoing")[
  Developer of #link("https://nlmixr2.org/")[nlmixr2] (R) and #link("https://github.com/FeRx-NLME/ferx-core")[ferx] (NLME engine with FOCEI, SAEM, analytical PK and ODE models).
]

#section("Education")
#entry("MSc Methodology and Statistics for the Behavioural, Biomedical and Social Sciences", "Utrecht University", "2022 – 2024")[
  Key modules: Biomedical Statistics, Computational Inference with R, Bayesian Statistics, Multilevel Modelling, Causal Inference, Structural Equation Modelling.
  Thesis: _Decoding Predictive Performance: A Simulation Study on Information Criteria vs. Internal Performance Measures_ (supervisors Dr. Maarten van Smeden and Dr. Anne de Hond), 8/10.
]
#entry("BSc Psychology", "Utrecht University", "2018 – 2022")[
  Minor in Methodology & Statistics and Artificial Intelligence. Key modules: Mathematics for AI, Missing Data Theory and Causal Effects, Structural Equation Modelling, Adaptive Systems, Cognition.
  Thesis on consumer-grade fitness tracker owners and physical activity monitoring, with Dr. Vera Toepoel and Statistics Netherlands (CBS), 8/10.
]
#entry("Gymnasium, Natural Sciences profile", "Utrechts Stedelijk Gymnasium", "2012 – 2017")[
  Physics, Chemistry, Biology, Math. Honourable participation in the National Physics Olympiad.
]

#section("Additional experience")
#entry("Rower, student athlete", "U.S.R. Triton", "2018 – 2024")[
  Trained 10 to 12 times a week at high-performance centres in Utrecht and Amsterdam. Regional Talent status, several National Championships and the Henley Royal Regatta (Temple 8+).
]
#entry("Coach", "U.S.R. Triton", "2019 – present")[
  Coaching rowers of all levels on skill development, performance and team dynamics.
]

#section("Skills")
*Languages:* English, Dutch. #h(1em) *Software:* R, `nlmixr2`, `rxode2`, Quarto, Git.
