
# EDA ---------------------------------------------------------------------


df_kr <- read_rds("data/df_kr_2023.rds")
df_kr |> 
  summarize(
    var = var(TFR), 
    sd = sd(TFR)
  )

summary(df_kr$TFR)

library(psych)
describe(df_kr$TFR)

library(moments)
skewness(df_kr$TFR)
kurtosis(df_kr$TFR) 

library(skimr)
skim(df_kr)

library(summarytools)
descr(df_kr) |> stview()
dfSummary(df_kr) |> stview()

library(flextable)
df_kr |> summarizor() |> as_flextable()

library(GWalkR)
gwalkr(df_kr)
