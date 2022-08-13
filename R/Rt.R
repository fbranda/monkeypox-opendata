# clean environment
try(dev.off(dev.list()["RStudioGD"]), silent=TRUE)
rm(list=ls())
gc()
# set current work-dir
# WARN: change this to your working directory
setwd("~/Desktop/Peer Review/Monkeypox/R")

# load main libraries
library(EpiEstim)
library(dplyr)

# functions
mu_sd_from_sh_sc <- function(sh, sc){
  mu <- sh * sc
  sd <- sqrt(sh) * sc
  return( list("mu" = mu, "sd" = sd) )
}

# config Serial Interval parameters
mu_sh <- 4.85
mu_sc <- 2.57

mu_mu <- mu_sd_from_sh_sc(mu_sh, mu_sc)$mu
mu_sd <- mu_sd_from_sh_sc(mu_sh, mu_sc)$sd

lo_sh <- 6.86
lo_sc <- 1.10

lo_mu <- mu_sd_from_sh_sc(lo_sh, lo_sc)$mu
lo_sd <- mu_sd_from_sh_sc(lo_sh, lo_sc)$sd

up_sh <- 5.67
up_sc <- 3.05

up_mu <- mu_sd_from_sh_sc(up_sh, up_sc)$mu
up_sd <- mu_sd_from_sh_sc(up_sh, up_sc)$sd

mean_si <- (up_mu+lo_mu)/2
std_mean_si <- (up_mu-lo_mu)/2/2

std_si <- (up_sd+lo_sd)/2
std_std_si <- (up_sd-lo_sd)/2/2

print(round(std_mean_si, 2))
print(round(std_std_si, 2))

config <- make_config(
  list(
    mean_si = mean_si, std_mean_si = std_mean_si,
    min_mean_si = lo_mu, max_mean_si = up_mu,
    std_si = std_si, std_std_si = std_std_si,
    min_std_si = lo_sd, max_std_si = up_sd
  )
)

# read data
csv <- read.csv("https://github.com/fbranda/monkeypox-opendata/raw/main/ECDC-WHO/Epicurves/epicurve_by_country.csv")
countries <- unique(csv$Country)

# loop
for(country_ in countries){
  print(country_)
  df <- csv %>% filter(Country==country_)
  len <- length(df$Date)
  # ignore incidence less than 4 weeks
  if(len < 28) next
  # estimate Rt
  res_parametric_si <- estimate_R(df$Cases, 
                                  method="uncertain_si",
                                  config = config
  )
  write.csv(res_parametric_si$R, paste("estimates/", country_, ".csv", sep = ""))
  # plot and save
  pdf(file = paste("plots/", country_, ".pdf", sep = ""))
  plot(res_parametric_si, legend = FALSE)
  dev.off()
}
