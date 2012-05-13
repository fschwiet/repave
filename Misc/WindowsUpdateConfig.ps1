#source: http://stackoverflow.com/questions/5682270/disable-automatic-updates-with-powershell 

$SCRIPT:AutoUpdateNotificationLevels= @{   

0="Not configured"; 
1="Disabled"; 
2="Notify before download";
3="Notify before installation"; 
4="Scheduled installation"

}

$SCRIPT:AutoUpdateDays=@{
0="Every Day"; 
1="Every Sunday"; 
2="Every Monday"; 
3="Every Tuesday"; 
4="Every Wednesday";
5="Every Thursday"; 
6="Every Friday"; 
7="Every Saturday"
}


Function Get-WindowsUpdateConfig
{
    $AUSettings = (New-Object -com "Microsoft.Update.AutoUpdate").Settings
    $AUObj = New-Object -TypeName System.Object

    Add-Member -inputObject $AuObj -MemberType NoteProperty -Name "NotificationLevel"  `
               -Value $AutoUpdateNotificationLevels[$AUSettings.NotificationLevel]

    Add-Member -inputObject $AuObj -MemberType NoteProperty -Name "UpdateDays" `
               -Value $AutoUpdateDays[$AUSettings.ScheduledInstallationDay]

    Add-Member -inputObject $AuObj -MemberType NoteProperty -Name "UpdateHour"   `
               -Value $AUSettings.ScheduledInstallationTime 

    Add-Member -inputObject $AuObj -MemberType NoteProperty -Name "Recommended updates" `
               -Value $(IF ($AUSettings.IncludeRecommendedUpdates) {"Included"}  else {"Excluded"})
    $AuObj
 } 

Function Set-WindowsUpdateConfig
{
Param (

[Parameter()]
[ValidateRange(0,4)]
[int]
$NotificationLevel , 

[Parameter()]
[ValidateRange(0,7)]
[int]
$Day, 

[Parameter()]
[ValidateRange(0,24)]
[int]
$hour, 

[Parameter()]
[bool]
$IncludeRecommended
)

 $AUSettings = (New-Object -com "Microsoft.Update.AutoUpdate").Settings
 if ($NotificationLevel)  {$AUSettings.NotificationLevel        =$NotificationLevel}
 if ($Day)                {$AUSettings.ScheduledInstallationDay =$Day}
 if ($hour)               {$AUSettings.ScheduledInstallationTime=$hour}
 if ($IncludeRecommended) {$AUSettings.IncludeRecommendedUpdates=$IncludeRecommended}
 $AUSettings.Save()
}