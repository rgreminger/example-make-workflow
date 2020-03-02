# Load results
load("./gen/analysis/output/model_results.RData")

# Load in additional package to export to latex table
require(stargazer) 

# Export to latex table 
stargazer(m1,m2,out="./gen/paper/output/table1.tex")
