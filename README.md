# Test of reproducible research workflow 

This is a basic test/example repository using Gnu make for a reproducible research workflow, as described here: (tilburgsciencehub.com)[http://tilburgsciencehub.com/]. 

The main aim is to have a basic `makefile`, which can be easily extended to use in an actual projects. 

## Dependencies
- R 
- R packages: 
	install.packages("stargazer")
- Gnu make 
- For Gnu make to work, both R and Gnu make need to be made available in the path 
- Detailed installation instructions can be found (here)[http://tilburgsciencehub.com/]


## Notes
- Tested under Windows 10, using `cmd.exe` terminal 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- On unix system, probably need to adjust `del` command to `rm`
- Several improvements remain (e.g. store .Rout files in audit folders etc.) 
