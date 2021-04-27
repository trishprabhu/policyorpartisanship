# Logit curve; don 't have to do for all 
# plot_model(m, type = "eff", terms = "Days")
# terms -- what variables you want to explorer
# type -- what curve you want to create

# Look at the table, and say that the findings stay the same; the authors 
# ultimately didn't have a ton to gain by pursuing logistic regression.

# Le: Maybe look at interaction and the other 2 model
# sjPlot; plot_model - compare to linear model

# Let's look at the null and residual deviance for our last model:

pchisq(3209.2 - 3176.4, 6215 - 6207, lower = FALSE)

# We're definitely in the tail, which suggests that our model is statistically 
# different from the mean model. That's good!

# Let's look at the odds ratios:

exp(table1reg_logistic$coefficients[])

# Question for Le: How should I interpret/consider the logistic regression
# approach -- in particular, how should I compare it to the "regular" lm
# approach utilized in the paper?

# Can plot some graphs -- look at the magnitudes across the scales of indep.
# variable. 

merged %>% 
  ggplot(aes(EUIntegrationSelf8, partyswitcher)) +
  geom_point() +
  stat_smooth(method = "glm", se = FALSE,
              method.args = list(binomial(link = "logit"))) +
  theme_minimal() +
  labs(title = "Logistic regression is...",
       subtitle = "")


merged %>% 
  ggplot(aes(EUIntegrationSelf8, partyswitcher)) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE) +
  theme_minimal() +
  labs(title = "Linear regression is...",
       subtitle = "")

binnedplot(x = intreg1a_logistic$fitted.values, 
           y = resid(intreg1a_logistic, type = "response"))

# Can do some inverse-logit/predict -- can define high level and a low level; compare
# 1 to 2, 2 to 3, etc. -- and discuss your findings in your report.

# Initial attempt at interpretation of Table 1 logistic regressions:

# Here, for each model, we calculate the odds ratio of the various coefficients; the odds
# ratio represents: P/1-P (or the probability of leaving the Conservatives/the
# probability of not leaving the Conservatives). With that said, if the value of
# an odds ratio is > 1, then the ratio suggests the predictor is associated with
# an increase in the probability of leaving the Conservatives. The magnitude of 
# that effect can be directly compared via the numbers, with adjustment for 
# variation via multiplication by the standard deviation.

# Let's consider the most simple regression/model: 

# The odds ratio for EUIntegrationSelf8 is 0.9672463; this suggests that a one-unit increase
# in pre-referendum Euroskepticism is associated with a decrease in the
# probability of defection from the Conservatives (as we would predict, given
# that the Conservatives adopt an anti-integration view post-referendum).

#...