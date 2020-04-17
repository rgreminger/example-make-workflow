# Deletes files in all subdirectories with the endings specified here
fileEndings <- c('*.log','*.aux','*.Rout')
for (fi in fileEndings) { 
  files <- list.files(getwd(),fi,include.dirs=F,recursive=T,full.names=T)
  file.remove(files)
}

# Delete temporary (hidden) R files
file.remove('.RData')
file.remove('.Rhistory')