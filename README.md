# vSphere-PowerCLI-Get-vCPU-to-pCPU-ratio

Get vCPU cores to pCPU cores ratio via the vSphere PowerCLI
v 1.0

Orginal code from https://www.vnoob.com/2014/02/find-vcpu-to-physical-cpu-ratio-with-powercli/
modified to only count real cores and ignore hyperthreaded cores

Get-vCPU-Ratio-no-HT.ps1 - This version only counts real CPU cores and not Hyper threaded cores

Get-vCPU-Ratio-HT.ps1 - This version only counts call CPU cores including Hyper threaded cores
