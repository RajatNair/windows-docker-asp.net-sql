FROM microsoft/iis:10.0.14393.206  
SHELL ["powershell"]

RUN Install-WindowsFeature NET-Framework-45-ASPNET ; \  
    Install-WindowsFeature Web-Asp-Net45

COPY DockerSampleWebApplication DockerSampleWebApplication  
RUN Remove-WebSite -Name 'Default Web Site'  
RUN New-Website -Name 'DockerSampleWebApplication' -Port 80 \  
    -PhysicalPath 'c:\DockerSampleWebApplication' -ApplicationPool '.NET v4.5'
EXPOSE 80

CMD ["ping", "-t", "localhost"]  

# Note
# With the current Windows Container release, you can't browse to http://localhost. This is a known behavior in WinNAT, and it will be resolved in the future. Until that is addressed, you need to use the IP address of the container.
# docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" container-name
# navigate to http://container-ip 