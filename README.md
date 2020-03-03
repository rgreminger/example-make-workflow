# Example of reproducible research workflow 

This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/). 

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  In this example project, the following is done: 
1. Load and prepare data
2. Run some analysis
3. Present results in a final pdf generated using LaTeX

## Dependencies
- R 
- R packages: 
	install.packages("stargazer")
- Gnu make 
- TeX distribution (I used TeX Live 2019) 
- For the `makefile` to work, R, Gnu make and the TeX distribution need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)


## Notes
- Tested under Windows 10, using `cmd.exe` terminal 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- On unix system, probably need to adjust `del` command to `rm`
- Many possible improvements remain, comments are welcome
