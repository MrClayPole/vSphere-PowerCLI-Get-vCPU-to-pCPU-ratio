param($vmhosts="*")
 
$vmhosts=Get-VMHost $vmhosts
$vms=Get-VM
 
$Output=@()
 
ForEach ($vmhost in $vmhosts)
{
 
$vcpus=0
$ratio=$null
$hostthreads=$vmhost.ExtensionData.Hardware.CpuInfo.NumCpuCores
$vms |Where-Object {$_.vmhost -like $vmhost}|ForEach {$vcpus+=$_.numcpu}
if ($vcpus -ne "0") {$ratio= "$("{0:N2}" -f ($vcpus/$hostthreads))" + ":1"}
 
$temp= New-Object psobject
$temp| Add-Member -MemberType Noteproperty "Hostname" -value $vmhost.name
$temp| Add-Member -MemberType Noteproperty "PhysicalThreads" -Value $Hostthreads
$temp| Add-Member -MemberType Noteproperty "vCPUs" -Value $vcpus
$temp| Add-Member -MemberType Noteproperty "Ratio" -Value $ratio
$Output+=$temp
 
}
 
$output

