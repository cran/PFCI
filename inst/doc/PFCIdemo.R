## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----install, eval = FALSE----------------------------------------------------
# install.packages("PFCI")
# 
# # Required Bioconductor dependencies
# install.packages("BiocManager")
# BiocManager::install(c("pcalg", "graph", "RBGL", "Rgraphviz"))

## ----basic, eval = FALSE------------------------------------------------------
# library(PFCI)
# 
# # Step 1: simulate a sparse DAG with p = 100 nodes
# sim <- simulate_pfci_toy(p = 100, n = 100, edge_prob = 0.02, seed = 1)
# 
# # Step 2: fit PFCI
# fit <- pfci_fit(sim$X, alpha = 0.05)
# print(fit)
# 
# # Step 3: evaluate against ground truth
# met <- pfci_metrics(sim, fit)
# met

## ----plot, eval = FALSE-------------------------------------------------------
# plot_pag(fit)

## ----latent, eval = FALSE-----------------------------------------------------
# sim_lat <- simulate_with_latent(p_obs = 100, gamma = 0.05, n = 100,
#                                 seed_graph = 1, seed_data = 2)
# fit_lat <- pfci_fit(sim_lat$X, alpha = 0.05)
# metrics_with_latent(sim_lat, fit_lat)

