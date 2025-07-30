FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2022
# we are taking base image from microsoft windows server core with IIS
LABEL name="ashutoshh"
LABEL email="ashutoshh@linux.com"
# label is optional part but good share with app to ops teams
WORKDIR C:\inetpub\wwwroot
# to change directory  for default location IIS app server 
COPY . . 
# source to destination copy
# source . mean in current location all files  
# destination . means -- where you workdir is having location 