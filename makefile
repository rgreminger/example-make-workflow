# Notes: 
# - If run on unix system, use rm instead of del command in clean  
# - Careful with spaces! If use \ to split to multiple lines, cannot have a space after \ 

# OVERALL BUILD RULES
all: data_cleaned results paper
paper: gen/paper/output/paper.pdf
data_cleaned: gen/data-preparation/output/data_cleaned.RData
results: gen/analysis/output/model_results.RData
.PHONY: clean

# INDIVIDUAL RECIPES

# Generate paper/text
gen/paper/output/paper.pdf: gen/paper/output/table1.tex \
				src/paper/paper.tex
	pdflatex -output-directory='gen/paper/output/' 'src/paper/paper.tex'


# Generate tables 
gen/paper/output/table1.tex: gen/analysis/output/model_results.RData \
				src/paper/tables.R
	R CMD BATCH src/paper/tables.R

# Run analysis  
gen/analysis/output/model_results.RData: gen/data-preparation/output/data_cleaned.RData \
						src/analysis/analyze.R
	R CMD BATCH src/analysis/update_input.R
	R CMD BATCH src/analysis/analyze.R

# Clean data
gen/data-preparation/output/data_cleaned.RData: data/dataset1/dataset1.csv \
						data/dataset2/dataset2.csv \
						src/data-preparation/merge_data.R \
						src/data-preparation/clean_data.R 
	R CMD BATCH src/data-preparation/update_input.R
	R CMD BATCH src/data-preparation/merge_data.R
	R CMD BATCH src/data-preparation/clean_data.R 

# Clean-up: Deletes temporary files
# Note: Using R to delete files keeps platform-independence. 
# 	    --vanilla option prevents from storing .RData output
clean: 
	R CMD BATCH --vanilla src/clean-up.R
	
